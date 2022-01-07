
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_register {scalar_t__ nr_mode; scalar_t__ nr_host_rx_rings; scalar_t__ nr_host_tx_rings; scalar_t__ nr_mem_id; } ;
struct nmreq_header {scalar_t__ nr_reqtype; int nr_name; scalar_t__ nr_body; } ;
struct netmap_mem_d {int dummy; } ;
struct netmap_adapter {int na_flags; scalar_t__ active_fds; scalar_t__ num_host_rx_rings; scalar_t__ num_host_tx_rings; int name; } ;
struct ifnet {int dummy; } ;


 int EINVAL ;
 int ENXIO ;
 int NAF_HOST_RINGS ;
 scalar_t__ NETMAP_REQ_REGISTER ;
 int NMG_LOCK_ASSERT () ;
 scalar_t__ NR_REG_PIPE_MASTER ;
 scalar_t__ NR_REG_PIPE_SLAVE ;
 int if_rele (struct ifnet*) ;
 struct ifnet* ifunit_ref (int ) ;
 int netmap_adapter_get (struct netmap_adapter*) ;
 int netmap_adapter_put (struct netmap_adapter*) ;
 int netmap_get_hw_na (struct ifnet*,struct netmap_mem_d*,struct netmap_adapter**) ;
 int netmap_get_monitor_na (struct nmreq_header*,struct netmap_adapter**,struct netmap_mem_d*,int) ;
 int netmap_get_null_na (struct nmreq_header*,struct netmap_adapter**,struct netmap_mem_d*,int) ;
 int netmap_get_pipe_na (struct nmreq_header*,struct netmap_adapter**,struct netmap_mem_d*,int) ;
 int netmap_get_vale_na (struct nmreq_header*,struct netmap_adapter**,struct netmap_mem_d*,int) ;
 struct netmap_mem_d* netmap_mem_find (scalar_t__) ;
 int netmap_mem_put (struct netmap_mem_d*) ;
 int nm_prdis (char*,int ,scalar_t__,scalar_t__) ;
 int nm_prerr (char*) ;

int
netmap_get_na(struct nmreq_header *hdr,
       struct netmap_adapter **na, struct ifnet **ifp,
       struct netmap_mem_d *nmd, int create)
{
 struct nmreq_register *req = (struct nmreq_register *)(uintptr_t)hdr->nr_body;
 int error = 0;
 struct netmap_adapter *ret = ((void*)0);
 int nmd_ref = 0;

 *na = ((void*)0);
 *ifp = ((void*)0);

 if (hdr->nr_reqtype != NETMAP_REQ_REGISTER) {
  return EINVAL;
 }

 if (req->nr_mode == NR_REG_PIPE_MASTER ||
   req->nr_mode == NR_REG_PIPE_SLAVE) {

  nm_prerr("Deprecated pipe nr_mode, use xx{yy or xx}yy syntax");
  return EINVAL;
 }

 NMG_LOCK_ASSERT();




 if (nmd == ((void*)0) && req->nr_mem_id) {
  nmd = netmap_mem_find(req->nr_mem_id);
  if (nmd == ((void*)0))
   return EINVAL;

  nmd_ref = 1;
 }
 error = netmap_get_null_na(hdr, na, nmd, create);
 if (error || *na != ((void*)0))
  goto out;


 error = netmap_get_monitor_na(hdr, na, nmd, create);
 if (error || *na != ((void*)0))
  goto out;


 error = netmap_get_pipe_na(hdr, na, nmd, create);
 if (error || *na != ((void*)0))
  goto out;


 error = netmap_get_vale_na(hdr, na, nmd, create);
 if (error)
  goto out;

 if (*na != ((void*)0))
  goto out;







 *ifp = ifunit_ref(hdr->nr_name);
 if (*ifp == ((void*)0)) {
  error = ENXIO;
  goto out;
 }

 error = netmap_get_hw_na(*ifp, nmd, &ret);
 if (error)
  goto out;

 *na = ret;
 netmap_adapter_get(ret);





 if (((*na)->na_flags & NAF_HOST_RINGS) && (*na)->active_fds == 0) {
  if (req->nr_host_tx_rings)
   (*na)->num_host_tx_rings = req->nr_host_tx_rings;
  if (req->nr_host_rx_rings)
   (*na)->num_host_rx_rings = req->nr_host_rx_rings;
 }
 nm_prdis("%s: host tx %d rx %u", (*na)->name, (*na)->num_host_tx_rings,
   (*na)->num_host_rx_rings);

out:
 if (error) {
  if (ret)
   netmap_adapter_put(ret);
  if (*ifp) {
   if_rele(*ifp);
   *ifp = ((void*)0);
  }
 }
 if (nmd_ref)
  netmap_mem_put(nmd);

 return error;
}
