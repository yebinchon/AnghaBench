
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ncl_pbuf_zone ;
 int nfscl_inited ;
 int nswbuf ;
 int pbuf_zsecond_create (char*,int) ;

void
nfscl_init(void)
{
 static int inited = 0;

 if (inited)
  return;
 inited = 1;
 nfscl_inited = 1;
 ncl_pbuf_zone = pbuf_zsecond_create("nfspbuf", nswbuf / 2);
}
