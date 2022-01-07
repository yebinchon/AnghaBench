
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct cdev {int dummy; } ;


 int FWRITE ;
 int securelevel_gt (int ,int ) ;

__attribute__((used)) static int
pci_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 int error;

 if (oflags & FWRITE) {
  error = securelevel_gt(td->td_ucred, 0);
  if (error)
   return (error);
 }

 return (0);
}
