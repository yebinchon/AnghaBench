
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vnode {int dummy; } ;
struct vattr {int va_gen; int va_fileid; int va_fsid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct label {int dummy; } ;
typedef int fingerprint_status_t ;


 int EAUTH ;



 int MAC_VERIEXEC_DBG (int,char*,int,int ,int ,int ) ;
 int VERIEXEC_FILES_FIRST ;
 int VERIEXEC_STATE_ENFORCE ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 struct thread* curthread ;
 int mac_veriexec_get_fingerprint_status (struct vnode*) ;
 int mac_veriexec_metadata_fetch_fingerprint_status (struct vnode*,struct vattr*,struct thread*,int ) ;
 int mac_veriexec_state ;

__attribute__((used)) static int
mac_veriexec_kld_check_load(struct ucred *cred, struct vnode *vp,
    struct label *vlabel)
{
 struct vattr va;
 struct thread *td = curthread;
 fingerprint_status_t status;
 int error;




 if ((mac_veriexec_state & VERIEXEC_STATE_ENFORCE) == 0)
  return (0);


 error = VOP_GETATTR(vp, &va, cred);
 if (error)
  return (error);





 error = mac_veriexec_metadata_fetch_fingerprint_status(vp, &va, td,
     VERIEXEC_FILES_FIRST);
 if (error && error != EAUTH)
  return (error);




 status = mac_veriexec_get_fingerprint_status(vp);
 switch (status) {
 case 130:
 case 128:
 case 129:
  if (error)
   return (error);
  break;
 default:




  MAC_VERIEXEC_DBG(2, "fingerprint status is %d for dev %ju, "
      "file %ju.%ju\n", status, (uintmax_t)va.va_fsid,
      (uintmax_t)va.va_fileid, (uintmax_t)va.va_gen);
  return (EAUTH);
 }


 return (0);
}
