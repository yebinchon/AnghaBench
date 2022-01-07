
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;


 int insmntque1 (struct vnode*,struct mount*,int ,int *) ;
 int insmntque_stddtr ;

int
insmntque(struct vnode *vp, struct mount *mp)
{

 return (insmntque1(vp, mp, insmntque_stddtr, ((void*)0)));
}
