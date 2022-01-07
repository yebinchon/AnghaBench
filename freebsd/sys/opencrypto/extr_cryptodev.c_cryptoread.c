
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct cdev {int dummy; } ;


 int EIO ;

__attribute__((used)) static int
cryptoread(struct cdev *dev, struct uio *uio, int ioflag)
{
 return (EIO);
}
