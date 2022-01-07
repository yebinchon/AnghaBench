
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fileops {int dummy; } ;
struct file {short f_type; int f_ops; int f_flag; void* f_data; } ;


 int atomic_store_rel_ptr (uintptr_t volatile*,uintptr_t) ;

void
finit(struct file *fp, u_int flag, short type, void *data, struct fileops *ops)
{
 fp->f_data = data;
 fp->f_flag = flag;
 fp->f_type = type;
 atomic_store_rel_ptr((volatile uintptr_t *)&fp->f_ops, (uintptr_t)ops);
}
