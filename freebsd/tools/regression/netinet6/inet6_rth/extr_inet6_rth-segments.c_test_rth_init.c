
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * caddr_t ;


 int IPV6_RTHDR_TYPE_0 ;
 int checkptr (int *,char*,char*) ;
 char* inet6_rth_init (void*,int,int ,int) ;
 int set_funcname (char*,int) ;

void
test_rth_init()
{
 char buf[10240];
 char *pbuf;

 set_funcname("test_rth_init", sizeof("test_rth_init\0"));

 pbuf = inet6_rth_init((void *)buf, 10, IPV6_RTHDR_TYPE_0, 100);
 checkptr(((void*)0), pbuf, "buffer too small\0");

 pbuf = inet6_rth_init((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 0);
 checkptr((caddr_t)&buf, pbuf, "0 segments\0");

 pbuf = inet6_rth_init((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 127);
 checkptr((caddr_t)&buf, pbuf, "127 segments\0");

 pbuf = inet6_rth_init((void *)buf, 10240, IPV6_RTHDR_TYPE_0, -1);
 checkptr(((void*)0), pbuf, "negative number of segments\0");

 pbuf = inet6_rth_init((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 128);
 checkptr(((void*)0), pbuf, "128 segments\0");
}
