
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_IN (void* (*) ()) ;
 int TRACE_OUT (void* (*) ()) ;
 int setgrent () ;

__attribute__((used)) static void *
group_mp_init_func(void)
{
 TRACE_IN(group_mp_init_func);
 setgrent();
 TRACE_OUT(group_mp_init_func);

 return (((void*)0));
}
