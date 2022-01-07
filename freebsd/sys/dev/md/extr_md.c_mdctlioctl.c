
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct md_req {void* md_label; void* md_file_seg; void* md_file; } ;
struct md_ioctl32 {void* md_label; void* md_file; int md_version; } ;
struct md_ioctl {void* md_label; void* md_file; int md_version; } ;
struct cdev {int dummy; } ;
typedef int mdr ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENOIOCTL ;
 int MDIOVERSION ;
 int MD_IOCTL2REQ (struct md_ioctl32*,struct md_req*) ;
 int MD_REQ2IOCTL (struct md_req*,struct md_ioctl32*) ;
 void* UIO_SYSSPACE ;
 void* UIO_USERSPACE ;
 int bzero (struct md_req*,int) ;
 char* devtoname (struct cdev*) ;
 int kern_mdattach (struct thread*,struct md_req*) ;
 int kern_mddetach (struct thread*,struct md_req*) ;
 int kern_mdquery (struct md_req*) ;
 int kern_mdresize (struct md_req*) ;
 scalar_t__ md_debug ;
 int printf (char*,char*,int,scalar_t__,int,struct thread*) ;

__attribute__((used)) static int
mdctlioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flags,
    struct thread *td)
{
 struct md_req mdr;
 int error;

 if (md_debug)
  printf("mdctlioctl(%s %lx %p %x %p)\n",
   devtoname(dev), cmd, addr, flags, td);

 bzero(&mdr, sizeof(mdr));
 switch (cmd) {
 case 135:
 case 133:
 case 129:
 case 131: {
  struct md_ioctl *mdio = (struct md_ioctl *)addr;
  if (mdio->md_version != MDIOVERSION)
   return (EINVAL);
  MD_IOCTL2REQ(mdio, &mdr);
  mdr.md_file = mdio->md_file;
  mdr.md_file_seg = UIO_USERSPACE;

  if ((void *)mdio->md_file == (void *)(mdio + 1))
   mdr.md_file_seg = UIO_SYSSPACE;
  mdr.md_label = mdio->md_label;
  break;
 }
 default:

  break;
 }

 error = 0;
 switch (cmd) {
 case 135:



  error = kern_mdattach(td, &mdr);
  break;
 case 133:



  error = kern_mddetach(td, &mdr);
  break;
 case 129:



  error = kern_mdresize(&mdr);
  break;
 case 131:



  error = kern_mdquery(&mdr);
  break;
 default:
  error = ENOIOCTL;
 }

 switch (cmd) {
 case 135:
 case 131: {
  struct md_ioctl *mdio = (struct md_ioctl *)addr;
  MD_REQ2IOCTL(&mdr, mdio);
  break;
 }
 default:

  break;
 }

 return (error);
}
