
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_IN (void (*) (void*)) ;
 int TRACE_OUT (void (*) (void*)) ;

__attribute__((used)) static void
passwd_mp_destroy_func(void *mdata)
{
 TRACE_IN(passwd_mp_destroy_func);
 TRACE_OUT(passwd_mp_destroy_func);
}
