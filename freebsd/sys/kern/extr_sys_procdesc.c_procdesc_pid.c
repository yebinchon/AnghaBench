
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procdesc {int pd_pid; } ;
struct file {scalar_t__ f_type; struct procdesc* f_data; } ;
typedef int pid_t ;


 scalar_t__ DTYPE_PROCDESC ;
 int KASSERT (int,char*) ;

pid_t
procdesc_pid(struct file *fp_procdesc)
{
 struct procdesc *pd;

 KASSERT(fp_procdesc->f_type == DTYPE_PROCDESC,
    ("procdesc_pid: !procdesc"));

 pd = fp_procdesc->f_data;
 return (pd->pd_pid);
}
