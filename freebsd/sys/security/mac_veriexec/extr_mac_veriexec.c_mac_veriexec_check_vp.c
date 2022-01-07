
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vnode {int dummy; } ;
struct vattr {int va_gen; int va_fileid; int va_fsid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
typedef int fingerprint_status_t ;
typedef int accmode_t ;


 int EAUTH ;
 int EPERM ;



 int MAC_VERIEXEC_DBG (int,char*,int,int ,int ,...) ;
 int VERIEXEC_FILES_FIRST ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int VVERIFY ;
 int VWRITE ;
 struct thread* curthread ;
 int mac_veriexec_get_fingerprint_status (struct vnode*) ;
 int mac_veriexec_metadata_fetch_fingerprint_status (struct vnode*,struct vattr*,struct thread*,int ) ;

__attribute__((used)) static int
mac_veriexec_check_vp(struct ucred *cred, struct vnode *vp, accmode_t accmode)
{
 struct vattr va;
 struct thread *td = curthread;
 fingerprint_status_t status;
 int error;


 error = VOP_GETATTR(vp, &va, cred);
 if (error)
  return (error);


 error = mac_veriexec_metadata_fetch_fingerprint_status(vp, &va, td,
     VERIEXEC_FILES_FIRST);
 if (error && error != EAUTH)
  return (error);




 status = mac_veriexec_get_fingerprint_status(vp);
 if (accmode & VWRITE) {





  switch (status) {
  case 130:
  case 128:
  case 129:
   MAC_VERIEXEC_DBG(2,
       "attempted write to fingerprinted file for dev "
       "%ju, file %ju.%ju\n", (uintmax_t)va.va_fsid,
       (uintmax_t)va.va_fileid, (uintmax_t)va.va_gen);
   return (EPERM);
  default:
   break;
  }
 }
 if (accmode & VVERIFY) {
  switch (status) {
  case 130:
  case 128:
  case 129:
   if (error)
    return (error);
   break;
  default:




   MAC_VERIEXEC_DBG(2, "fingerprint status is %d for dev "
       "%ju, file %ju.%ju\n", status,
       (uintmax_t)va.va_fsid, (uintmax_t)va.va_fileid,
       (uintmax_t)va.va_gen);
   return (EAUTH);
  }
 }
 return (0);
}
