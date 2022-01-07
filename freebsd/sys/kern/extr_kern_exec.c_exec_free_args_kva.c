
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exec_args_gen ;
 int exec_release_args_kva (void*,int ) ;

__attribute__((used)) static void
exec_free_args_kva(void *cookie)
{

 exec_release_args_kva(cookie, exec_args_gen);
}
