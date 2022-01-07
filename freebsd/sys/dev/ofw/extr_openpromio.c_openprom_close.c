
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 scalar_t__ openprom_is_open ;

__attribute__((used)) static int
openprom_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{

 openprom_is_open = 0;
 return (0);
}
