
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int nswbuf ;
 int nvnpbufs ;
 int pbuf_zsecond_create (char*,int) ;
 int vnode_pbuf_zone ;

__attribute__((used)) static void
vnode_pager_init(void *dummy)
{


 nvnpbufs = nswbuf * 2;



 TUNABLE_INT_FETCH("vm.vnode_pbufs", &nvnpbufs);
 vnode_pbuf_zone = pbuf_zsecond_create("vnpbuf", nvnpbufs);
}
