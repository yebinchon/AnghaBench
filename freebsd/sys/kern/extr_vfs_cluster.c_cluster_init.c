
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cluster_pbuf_zone ;
 int nswbuf ;
 int pbuf_zsecond_create (char*,int) ;

__attribute__((used)) static void
cluster_init(void *dummy)
{

 cluster_pbuf_zone = pbuf_zsecond_create("clpbuf", nswbuf / 2);
}
