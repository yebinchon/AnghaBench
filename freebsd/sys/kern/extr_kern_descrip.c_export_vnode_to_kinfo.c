
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode {int dummy; } ;
struct kinfo_file {int kf_fd; int kf_ref_count; int kf_offset; int kf_structsize; int kf_cap_rights; int kf_flags; int kf_status; int kf_type; } ;


 int KERN_FILEDESC_PACK_KINFO ;
 int KF_ATTR_VALID ;
 int KF_TYPE_VNODE ;
 int bzero (struct kinfo_file*,int) ;
 int cap_rights_init (int *) ;
 int pack_kinfo (struct kinfo_file*) ;
 int roundup2 (int,int) ;
 int vn_fill_kinfo_vnode (struct vnode*,struct kinfo_file*) ;
 int vrele (struct vnode*) ;
 int xlate_fflags (int) ;

__attribute__((used)) static void
export_vnode_to_kinfo(struct vnode *vp, int fd, int fflags,
    struct kinfo_file *kif, int flags)
{
 int error;

 bzero(kif, sizeof(*kif));

 kif->kf_type = KF_TYPE_VNODE;
 error = vn_fill_kinfo_vnode(vp, kif);
 if (error == 0)
  kif->kf_status |= KF_ATTR_VALID;
 kif->kf_flags = xlate_fflags(fflags);
 cap_rights_init(&kif->kf_cap_rights);
 kif->kf_fd = fd;
 kif->kf_ref_count = -1;
 kif->kf_offset = -1;
 if ((flags & KERN_FILEDESC_PACK_KINFO) != 0)
  pack_kinfo(kif);
 else
  kif->kf_structsize = roundup2(sizeof(*kif), sizeof(uint64_t));
 vrele(vp);
}
