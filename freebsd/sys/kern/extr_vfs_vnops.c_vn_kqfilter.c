
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;
struct file {int f_vnode; } ;


 int VOP_KQFILTER (int ,struct knote*) ;

__attribute__((used)) static int
vn_kqfilter(struct file *fp, struct knote *kn)
{

 return (VOP_KQFILTER(fp->f_vnode, kn));
}
