
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;


 int EINVAL ;

 int ioat_dma_test (int ) ;

__attribute__((used)) static int
ioat_test_ioctl(struct cdev *dev, unsigned long cmd, caddr_t arg, int flag,
    struct thread *td)
{

 switch (cmd) {
 case 128:
  ioat_dma_test(arg);
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
