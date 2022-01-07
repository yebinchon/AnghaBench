
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ksem {int dummy; } ;
struct file {struct ksem* f_data; } ;


 int ksem_drop (struct ksem*) ;

__attribute__((used)) static int
ksem_closef(struct file *fp, struct thread *td)
{
 struct ksem *ks;

 ks = fp->f_data;
 fp->f_data = ((void*)0);
 ksem_drop(ks);

 return (0);
}
