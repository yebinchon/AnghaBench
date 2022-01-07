
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct cdev {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
audit_write(struct cdev *dev, struct uio *uio, int ioflag)
{


 return (EOPNOTSUPP);
}
