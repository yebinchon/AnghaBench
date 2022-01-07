
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_vale_polling {int dummy; } ;
struct nmreq_header {scalar_t__ nr_reqtype; scalar_t__ nr_body; } ;
struct netmap_adapter {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ NETMAP_BDG_POLLING_ON ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 int netmap_adapter_get (struct netmap_adapter*) ;
 int netmap_adapter_put (struct netmap_adapter*) ;
 int netmap_get_vale_na (struct nmreq_header*,struct netmap_adapter**,int *,int ) ;
 int nm_bdg_ctl_polling_start (struct nmreq_vale_polling*,struct netmap_adapter*) ;
 int nm_bdg_ctl_polling_stop (struct netmap_adapter*) ;
 int nm_is_bwrap (struct netmap_adapter*) ;

int
nm_bdg_polling(struct nmreq_header *hdr)
{
 struct nmreq_vale_polling *req =
  (struct nmreq_vale_polling *)(uintptr_t)hdr->nr_body;
 struct netmap_adapter *na = ((void*)0);
 int error = 0;

 NMG_LOCK();
 error = netmap_get_vale_na(hdr, &na, ((void*)0), 0);
 if (na && !error) {
  if (!nm_is_bwrap(na)) {
   error = EOPNOTSUPP;
  } else if (hdr->nr_reqtype == NETMAP_BDG_POLLING_ON) {
   error = nm_bdg_ctl_polling_start(req, na);
   if (!error)
    netmap_adapter_get(na);
  } else {
   error = nm_bdg_ctl_polling_stop(na);
   if (!error)
    netmap_adapter_put(na);
  }
  netmap_adapter_put(na);
 } else if (!na && !error) {

  error = EINVAL;
 }
 NMG_UNLOCK();

 return error;
}
