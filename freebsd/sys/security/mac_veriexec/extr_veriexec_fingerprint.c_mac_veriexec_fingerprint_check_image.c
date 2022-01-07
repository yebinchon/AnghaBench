
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct image_params {int interpreted; int attr; struct vnode* vp; } ;
typedef int fingerprint_status_t ;
struct TYPE_2__ {int pr_securelevel; } ;


 int EAUTH ;
 int EPERM ;







 int VERIEXEC_DEBUG (int,char*) ;
 int VERIEXEC_STATE_ACTIVE ;
 int VERIEXEC_STATE_ENFORCE ;
 int identify_error (struct image_params*,struct thread*,char*) ;
 int mac_veriexec_get_fingerprint_status (struct vnode*) ;
 scalar_t__ mac_veriexec_in_state (int ) ;
 int mac_veriexec_metadata_fetch_fingerprint_status (struct vnode*,int ,struct thread*,int) ;
 TYPE_1__ prison0 ;

int
mac_veriexec_fingerprint_check_image(struct image_params *imgp,
    int check_files, struct thread *td)
{
 struct vnode *vp = imgp->vp;
 int error;
 fingerprint_status_t status;

 if (!mac_veriexec_in_state(VERIEXEC_STATE_ACTIVE))
  return 0;

 error = mac_veriexec_metadata_fetch_fingerprint_status(vp, imgp->attr,
     td, check_files);
 if (error && error != EAUTH)
  return (error);




 status = mac_veriexec_get_fingerprint_status(vp);
 switch (status) {
 case 132:
  identify_error(imgp, td, "got unexpected FINGERPRINT_INVALID");
  error = EPERM;
  break;

 case 134:
  if (!check_files) {
   if (prison0.pr_securelevel > 1 ||
       mac_veriexec_in_state(VERIEXEC_STATE_ENFORCE))
    error = EPERM;
  }
  break;

 case 128:
  VERIEXEC_DEBUG(4, ("Fingerprint matches\n"));
  break;

 case 133:

  if (!imgp->interpreted) {
   identify_error(imgp, td, "attempted direct execution");
   if (prison0.pr_securelevel > 1 ||
       mac_veriexec_in_state(VERIEXEC_STATE_ENFORCE))
    error = EPERM;
  }
  break;

 case 129:
  identify_error(imgp, td,
      "fingerprint does not match loaded value");
  if (prison0.pr_securelevel > 1 ||
      mac_veriexec_in_state(VERIEXEC_STATE_ENFORCE))
   error = EAUTH;
  break;

 case 130:
  identify_error(imgp, td, "no fingerprint");
  if (prison0.pr_securelevel > 1 ||
      mac_veriexec_in_state(VERIEXEC_STATE_ENFORCE))
   error = EAUTH;
  break;

 case 131:
  identify_error(imgp, td, "no signatures for device");
  if (prison0.pr_securelevel > 1 ||
      mac_veriexec_in_state(VERIEXEC_STATE_ENFORCE))
   error = EAUTH;
  break;

 default:
  identify_error(imgp, td, "invalid status field for vnode");
  error = EPERM;
 }
 return error;
}
