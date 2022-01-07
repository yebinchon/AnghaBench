
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct mqfs_node {int dummy; } ;
struct file {struct mqfs_node* f_data; int * f_ops; } ;
struct TYPE_2__ {int mi_lock; } ;


 int badfileops ;
 TYPE_1__ mqfs_data ;
 int mqnode_release (struct mqfs_node*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
mqf_close(struct file *fp, struct thread *td)
{
 struct mqfs_node *pn;

 fp->f_ops = &badfileops;
 pn = fp->f_data;
 fp->f_data = ((void*)0);
 sx_xlock(&mqfs_data.mi_lock);
 mqnode_release(pn);
 sx_xunlock(&mqfs_data.mi_lock);
 return (0);
}
