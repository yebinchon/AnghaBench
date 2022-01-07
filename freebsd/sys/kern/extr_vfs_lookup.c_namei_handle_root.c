
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct componentname {int cn_flags; char* cn_nameptr; } ;
struct nameidata {int ni_lcf; struct vnode* ni_rootdir; int ni_pathlen; struct componentname ni_cnd; } ;


 int BENEATH ;
 int CAPFAIL_LOOKUP ;
 int ENOTCAPABLE ;
 scalar_t__ KTRPOINT (int ,int ) ;
 int KTR_CAPFAIL ;
 int NI_LCF_BENEATH_ABS ;
 int NI_LCF_BENEATH_LATCHED ;
 int NI_LCF_STRICTRELATIVE ;
 int curthread ;
 int ktrcapfail (int ,int *,int *) ;
 int nameicap_cleanup (struct nameidata*,int) ;
 int vrefact (struct vnode*) ;

__attribute__((used)) static int
namei_handle_root(struct nameidata *ndp, struct vnode **dpp)
{
 struct componentname *cnp;

 cnp = &ndp->ni_cnd;
 if ((ndp->ni_lcf & NI_LCF_STRICTRELATIVE) != 0) {




  return (ENOTCAPABLE);
 }
 if ((cnp->cn_flags & BENEATH) != 0) {
  ndp->ni_lcf |= NI_LCF_BENEATH_ABS;
  ndp->ni_lcf &= ~NI_LCF_BENEATH_LATCHED;
  nameicap_cleanup(ndp, 0);
 }
 while (*(cnp->cn_nameptr) == '/') {
  cnp->cn_nameptr++;
  ndp->ni_pathlen--;
 }
 *dpp = ndp->ni_rootdir;
 vrefact(*dpp);
 return (0);
}
