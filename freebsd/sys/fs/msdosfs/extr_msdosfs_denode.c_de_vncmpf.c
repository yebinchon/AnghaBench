
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vnode {int dummy; } ;
struct denode {scalar_t__ de_inode; scalar_t__ de_refcnt; } ;


 struct denode* VTODE (struct vnode*) ;

__attribute__((used)) static int
de_vncmpf(struct vnode *vp, void *arg)
{
 struct denode *de;
 uint64_t *a;

 a = arg;
 de = VTODE(vp);
 return (de->de_inode != *a) || (de->de_refcnt <= 0);
}
