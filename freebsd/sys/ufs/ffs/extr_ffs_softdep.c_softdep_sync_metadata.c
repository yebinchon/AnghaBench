
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int panic (char*) ;

int
softdep_sync_metadata(struct vnode *vp)
{

 panic("softdep_sync_metadata called");
}
