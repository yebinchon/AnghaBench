
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct dbreg {int dummy; } ;


 int ENOSYS ;

int
set_dbregs(struct thread *td, struct dbreg *dbregs)
{


 return (ENOSYS);
}
