
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct lockd_ans {int dummy; } ;
struct cdev {int dummy; } ;


 int EOPNOTSUPP ;
 int curthread ;
 int nfslockdans (int ,struct lockd_ans*) ;
 int uiomove (struct lockd_ans*,int,struct uio*) ;

__attribute__((used)) static int
nfslock_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct lockd_ans la;
 int error;

 if (uio->uio_resid != sizeof la)
  return (EOPNOTSUPP);
 error = uiomove(&la, sizeof la, uio);
 if (!error)
  error = nfslockdans(curthread, &la);
 return (error);
}
