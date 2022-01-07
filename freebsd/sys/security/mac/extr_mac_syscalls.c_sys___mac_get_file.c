
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct __mac_get_file_args {int dummy; } ;


 int ENOSYS ;

int
sys___mac_get_file(struct thread *td, struct __mac_get_file_args *uap)
{

 return (ENOSYS);
}
