
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_IN (void* (*) ()) ;
 int TRACE_OUT (void* (*) ()) ;
 int setpwent () ;

__attribute__((used)) static void *
passwd_mp_init_func(void)
{
 TRACE_IN(passwd_mp_init_func);
 setpwent();
 TRACE_OUT(passwd_mp_init_func);

 return (((void*)0));
}
