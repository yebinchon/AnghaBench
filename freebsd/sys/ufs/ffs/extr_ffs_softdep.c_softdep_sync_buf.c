
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct buf {int dummy; } ;


 int panic (char*) ;

int
softdep_sync_buf(struct vnode *vp, struct buf *bp, int waitfor)
{

 panic("softdep_sync_buf called");
}
