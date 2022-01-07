
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int NSWBUF_MIN ;
 int UMA_ALIGN_CACHE ;
 int UMA_ZONE_NOFREE ;
 int UMA_ZONE_VM ;
 int nswbuf_max ;
 int pbuf_ctor ;
 int pbuf_dtor ;
 int pbuf_init ;
 int pbuf_zone ;
 int uma_zcreate (char*,int,int ,int ,int ,int *,int ,int) ;
 scalar_t__ uma_zone_set_max (int ,int ) ;

void
vm_pager_bufferinit(void)
{


 pbuf_zone = uma_zcreate("pbuf", sizeof(struct buf),
     pbuf_ctor, pbuf_dtor, pbuf_init, ((void*)0), UMA_ALIGN_CACHE,
     UMA_ZONE_VM | UMA_ZONE_NOFREE);

 nswbuf_max += uma_zone_set_max(pbuf_zone, NSWBUF_MIN);
}
