
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbuf_info {int dmap; int dmat; struct mbuf* mbuf; } ;
struct nicvf {int dev; } ;
struct mbuf {int dummy; } ;
typedef int bus_addr_t ;


 int BUS_DMASYNC_POSTREAD ;
 struct rbuf_info* GET_RBUF_INFO (int ) ;
 int PHYS_TO_DMAP (int ) ;
 scalar_t__ __predict_false (int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_get_nameunit (int ) ;
 int panic (char*,int ) ;

__attribute__((used)) static struct mbuf *
nicvf_rb_ptr_to_mbuf(struct nicvf *nic, bus_addr_t rb_ptr)
{
 struct mbuf *mbuf;
 struct rbuf_info *rinfo;


 rinfo = GET_RBUF_INFO(PHYS_TO_DMAP(rb_ptr));


 mbuf = rinfo->mbuf;
 if (__predict_false(mbuf == ((void*)0))) {
  panic("%s: Received packet fragment with NULL mbuf",
      device_get_nameunit(nic->dev));
 }




 rinfo->mbuf = ((void*)0);

 bus_dmamap_sync(rinfo->dmat, rinfo->dmap, BUS_DMASYNC_POSTREAD);
 bus_dmamap_unload(rinfo->dmat, rinfo->dmap);

 return (mbuf);
}
