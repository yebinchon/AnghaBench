
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct dbreg {int dummy; } ;


 int PROC_ACTION (int ) ;
 int fill_dbregs (struct thread*,struct dbreg*) ;

int
proc_read_dbregs(struct thread *td, struct dbreg *dbregs)
{

 PROC_ACTION(fill_dbregs(td, dbregs));
}
