
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;


 int FIOSEEKDATA ;
 int FIOSEEKHOLE ;
 int KASSERT (int,char*) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int VOP_IOCTL (struct vnode*,int ,scalar_t__*,int ,struct ucred*,int ) ;
 int curthread ;

__attribute__((used)) static off_t
vn_skip_hole(struct vnode *outvp, off_t xfer2, off_t *outoffp, off_t *xferp,
    off_t *dataoffp, off_t *holeoffp, struct ucred *cred)
{
 int error;
 off_t delta;

 if (*holeoffp == 0 || *holeoffp <= *outoffp) {
  *dataoffp = *outoffp;
  error = VOP_IOCTL(outvp, FIOSEEKDATA, dataoffp, 0, cred,
      curthread);
  if (error == 0) {
   *holeoffp = *dataoffp;
   error = VOP_IOCTL(outvp, FIOSEEKHOLE, holeoffp, 0, cred,
       curthread);
  }
  if (error != 0 || *holeoffp == *dataoffp) {
   *holeoffp = -1;
   return (xfer2);
  }
  KASSERT(*dataoffp >= *outoffp,
      ("vn_skip_hole: dataoff=%jd < outoff=%jd",
      (intmax_t)*dataoffp, (intmax_t)*outoffp));
  KASSERT(*holeoffp > *dataoffp,
      ("vn_skip_hole: holeoff=%jd <= dataoff=%jd",
      (intmax_t)*holeoffp, (intmax_t)*dataoffp));
 }





 if (*dataoffp > *outoffp) {
  delta = *dataoffp - *outoffp;
  if (delta >= *xferp) {

   *outoffp += *xferp;
   *xferp = 0;
   return (0);
  }
  *xferp -= delta;
  *outoffp += delta;
  xfer2 = MIN(xfer2, *xferp);
 }
 if (*holeoffp > *outoffp && *holeoffp < *outoffp + xfer2)
  xfer2 = *holeoffp - *outoffp;
 return (xfer2);
}
