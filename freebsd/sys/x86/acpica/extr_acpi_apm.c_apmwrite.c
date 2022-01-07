
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct cdev {int dummy; } ;



__attribute__((used)) static int
apmwrite(struct cdev *dev, struct uio *uio, int ioflag)
{
 return (uio->uio_resid);
}
