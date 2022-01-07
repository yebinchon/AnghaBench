
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vop_pathconf_args {int a_name; int* a_retval; TYPE_4__* a_vp; } ;
struct TYPE_8__ {TYPE_2__* v_mount; int v_type; } ;
struct TYPE_7__ {int i_e2fs; } ;
struct TYPE_5__ {int f_iosize; int f_bsize; } ;
struct TYPE_6__ {int mnt_flag; TYPE_1__ mnt_stat; } ;


 int ACL_MAX_ENTRIES ;
 int EINVAL ;
 int EXT2F_ROCOMPAT_DIR_NLINK ;
 int EXT2_HAS_RO_COMPAT_FEATURE (int ,int ) ;
 int EXT4_LINK_MAX ;
 int INT_MAX ;
 int MAXPATHLEN ;
 int MNT_ACLS ;
 int NAME_MAX ;
 int PAGE_SIZE ;
 int PIPE_BUF ;
 int VDIR ;
 int VFIFO ;
 TYPE_3__* VTOI (TYPE_4__*) ;
 int vop_stdpathconf (struct vop_pathconf_args*) ;

__attribute__((used)) static int
ext2_pathconf(struct vop_pathconf_args *ap)
{
 int error = 0;

 switch (ap->a_name) {
 case 139:
  if (EXT2_HAS_RO_COMPAT_FEATURE(VTOI(ap->a_vp)->i_e2fs,
      EXT2F_ROCOMPAT_DIR_NLINK))
   *ap->a_retval = INT_MAX;
  else
   *ap->a_retval = EXT4_LINK_MAX;
  break;
 case 137:
  *ap->a_retval = NAME_MAX;
  break;
 case 135:
  if (ap->a_vp->v_type == VDIR || ap->a_vp->v_type == VFIFO)
   *ap->a_retval = PIPE_BUF;
  else
   error = EINVAL;
  break;
 case 141:
  *ap->a_retval = 1;
  break;
 case 136:
  *ap->a_retval = 1;
  break;
 case 138:
  *ap->a_retval = ap->a_vp->v_mount->mnt_stat.f_iosize;
  break;
 case 134:
  *ap->a_retval = 0;
  break;
 case 128:
  *ap->a_retval = 0;
  break;
 case 142:
  *ap->a_retval = ap->a_vp->v_mount->mnt_stat.f_bsize;
  break;
 case 140:
  *ap->a_retval = 64;
  break;
 case 133:
  *ap->a_retval = ap->a_vp->v_mount->mnt_stat.f_iosize;
  break;
 case 132:
  *ap->a_retval = -1;
  break;
 case 131:
  *ap->a_retval = ap->a_vp->v_mount->mnt_stat.f_iosize;
  break;
 case 130:
  *ap->a_retval = PAGE_SIZE;
  break;
 case 129:
  *ap->a_retval = MAXPATHLEN;
  break;

 default:
  error = vop_stdpathconf(ap);
  break;
 }
 return (error);
}
