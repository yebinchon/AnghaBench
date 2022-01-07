
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kinfo_file {int kf_fd; int kf_structsize; int kf_status; int kf_offset; int kf_ref_count; int kf_cap_rights; int kf_flags; int kf_type; } ;
struct filedesc {int dummy; } ;
struct file {int f_count; int f_flag; } ;
typedef int cap_rights_t ;


 int KERN_FILEDESC_PACK_KINFO ;
 int KF_ATTR_VALID ;
 int KF_TYPE_UNKNOWN ;
 int bzero (struct kinfo_file*,int) ;
 int cap_rights_init (int *) ;
 int fo_fill_kinfo (struct file*,struct kinfo_file*,struct filedesc*) ;
 int foffset_get (struct file*) ;
 int pack_kinfo (struct kinfo_file*) ;
 int roundup2 (int,int) ;
 int xlate_fflags (int ) ;

__attribute__((used)) static void
export_file_to_kinfo(struct file *fp, int fd, cap_rights_t *rightsp,
    struct kinfo_file *kif, struct filedesc *fdp, int flags)
{
 int error;

 bzero(kif, sizeof(*kif));


 kif->kf_type = KF_TYPE_UNKNOWN;
 kif->kf_flags = xlate_fflags(fp->f_flag);
 if (rightsp != ((void*)0))
  kif->kf_cap_rights = *rightsp;
 else
  cap_rights_init(&kif->kf_cap_rights);
 kif->kf_fd = fd;
 kif->kf_ref_count = fp->f_count;
 kif->kf_offset = foffset_get(fp);





 error = fo_fill_kinfo(fp, kif, fdp);
 if (error == 0)
  kif->kf_status |= KF_ATTR_VALID;
 if ((flags & KERN_FILEDESC_PACK_KINFO) != 0)
  pack_kinfo(kif);
 else
  kif->kf_structsize = roundup2(sizeof(*kif), sizeof(uint64_t));
}
