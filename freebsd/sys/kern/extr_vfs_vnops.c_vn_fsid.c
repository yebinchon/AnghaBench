
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vnode {TYPE_2__* v_mount; } ;
struct vattr {int va_fsid; } ;
struct TYPE_6__ {scalar_t__* val; } ;
typedef TYPE_3__ fsid_t ;
struct TYPE_4__ {TYPE_3__ f_fsid; } ;
struct TYPE_5__ {TYPE_1__ mnt_stat; } ;


 int NBBY ;

void
vn_fsid(struct vnode *vp, struct vattr *va)
{
 fsid_t *f;

 f = &vp->v_mount->mnt_stat.f_fsid;
 va->va_fsid = (uint32_t)f->val[1];
 va->va_fsid <<= sizeof(f->val[1]) * NBBY;
 va->va_fsid += (uint32_t)f->val[0];
}
