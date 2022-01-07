
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_IN (void* (*) ()) ;
 int TRACE_OUT (void* (*) ()) ;
 int setservent (int ) ;

__attribute__((used)) static void *
services_mp_init_func(void)
{
 TRACE_IN(services_mp_init_func);
 setservent(0);
 TRACE_OUT(services_mp_init_func);

 return (((void*)0));
}
