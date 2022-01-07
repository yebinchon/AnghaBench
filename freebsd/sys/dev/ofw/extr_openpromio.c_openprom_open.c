
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int EBUSY ;
 int openprom_is_open ;

__attribute__((used)) static int
openprom_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{

 if (openprom_is_open != 0)
  return (EBUSY);
 openprom_is_open = 1;
 return (0);
}
