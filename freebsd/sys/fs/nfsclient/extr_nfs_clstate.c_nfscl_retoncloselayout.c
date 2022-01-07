
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct nfsclrecalllayout {int dummy; } ;
struct TYPE_7__ {int seqid; } ;
struct nfscllayout {int nfsly_flags; TYPE_1__ nfsly_stateid; int nfsly_flayrw; int nfsly_flayread; } ;
struct nfsclclient {int dummy; } ;
struct TYPE_9__ {int n_flag; } ;
struct TYPE_8__ {scalar_t__ v_type; } ;


 int LIST_EMPTY (int *) ;
 int NFSCL_DEBUG (int,char*,int ) ;
 int NFSHASPNFS (int ) ;
 int NFSLAYOUTIOMODE_READ ;
 int NFSLAYOUTIOMODE_RW ;
 int NFSLAYOUTRETURN_FILE ;
 int NFSLY_RECALL ;
 int NFSLY_RETONCLOSE ;
 int NNOLAYOUT ;
 int UINT64_MAX ;
 int VFSTONFS (int ) ;
 scalar_t__ VREG ;
 TYPE_5__* VTONFS (TYPE_2__*) ;
 scalar_t__ nfs_numnfscbd ;
 scalar_t__ nfscl_enablecallb ;
 struct nfscllayout* nfscl_findlayout (struct nfsclclient*,int *,int) ;
 int nfscl_layoutrecall (int ,struct nfscllayout*,int ,int ,int ,int ,int ,int ,int *,struct nfsclrecalllayout*) ;
 int vnode_mount (TYPE_2__*) ;

__attribute__((used)) static void
nfscl_retoncloselayout(vnode_t vp, struct nfsclclient *clp, uint8_t *fhp,
    int fhlen, struct nfsclrecalllayout **recallpp)
{
 struct nfscllayout *lyp;
 uint32_t iomode;

 if (vp->v_type != VREG || !NFSHASPNFS(VFSTONFS(vnode_mount(vp))) ||
     nfscl_enablecallb == 0 || nfs_numnfscbd == 0 ||
     (VTONFS(vp)->n_flag & NNOLAYOUT) != 0)
  return;
 lyp = nfscl_findlayout(clp, fhp, fhlen);
 if (lyp != ((void*)0) && (lyp->nfsly_flags & (NFSLY_RETONCLOSE |
     NFSLY_RECALL)) == NFSLY_RETONCLOSE) {
  iomode = 0;
  if (!LIST_EMPTY(&lyp->nfsly_flayread))
   iomode |= NFSLAYOUTIOMODE_READ;
  if (!LIST_EMPTY(&lyp->nfsly_flayrw))
   iomode |= NFSLAYOUTIOMODE_RW;
  (void)nfscl_layoutrecall(NFSLAYOUTRETURN_FILE, lyp, iomode,
      0, UINT64_MAX, lyp->nfsly_stateid.seqid, 0, 0, ((void*)0),
      *recallpp);
  NFSCL_DEBUG(4, "retoncls recall iomode=%d\n", iomode);
  *recallpp = ((void*)0);
 }
}
