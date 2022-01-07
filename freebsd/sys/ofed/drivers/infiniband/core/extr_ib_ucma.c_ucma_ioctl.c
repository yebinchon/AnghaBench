
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOTTY ;



__attribute__((used)) static long
ucma_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{

 switch (cmd) {
 case 128:
 case 129:
  return (0);
 default:
  return (-ENOTTY);
 }
}
