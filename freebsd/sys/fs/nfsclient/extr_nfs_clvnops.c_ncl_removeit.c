
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct sillyrename {int s_cred; int s_namlen; int s_name; TYPE_1__* s_dvp; } ;
struct TYPE_2__ {scalar_t__ v_type; } ;


 scalar_t__ VBAD ;
 int nfs_removerpc (TYPE_1__*,struct vnode*,int ,int ,int ,int *) ;

int
ncl_removeit(struct sillyrename *sp, struct vnode *vp)
{




 if (sp->s_dvp->v_type == VBAD)
  return (0);
 return (nfs_removerpc(sp->s_dvp, vp, sp->s_name, sp->s_namlen,
     sp->s_cred, ((void*)0)));
}
