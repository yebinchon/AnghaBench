
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xswdev {scalar_t__ xsw_version; scalar_t__ xsw_dev; int xsw_flags; int xsw_nblks; int xsw_used; } ;
struct kvm_swap {int ksw_flags; int ksw_total; int ksw_used; int ksw_devname; } ;


 scalar_t__ ENOENT ;
 scalar_t__ NODEV ;
 int S_IFCHR ;
 scalar_t__ XSWDEV_VERSION ;
 char* devname (scalar_t__,int ) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int print_swap (struct kvm_swap*) ;
 int print_swap_header () ;
 int print_swap_total () ;
 int snprintf (int ,int,char*,...) ;
 int sysctl (int*,size_t,struct xswdev*,size_t*,int *,int ) ;
 int sysctlnametomib (char*,int*,size_t*) ;

__attribute__((used)) static void
swapmode_sysctl(void)
{
 struct kvm_swap ksw;
 struct xswdev xsw;
 size_t mibsize, size;
 int mib[16], n;

 print_swap_header();
 mibsize = sizeof mib / sizeof mib[0];
 if (sysctlnametomib("vm.swap_info", mib, &mibsize) == -1)
  err(1, "sysctlnametomib()");
 for (n = 0; ; ++n) {
  mib[mibsize] = n;
  size = sizeof xsw;
  if (sysctl(mib, mibsize + 1, &xsw, &size, ((void*)0), 0) == -1)
   break;
  if (xsw.xsw_version != XSWDEV_VERSION)
   errx(1, "xswdev version mismatch");
  if (xsw.xsw_dev == NODEV)
   snprintf(ksw.ksw_devname, sizeof ksw.ksw_devname,
       "<NFSfile>");
  else
   snprintf(ksw.ksw_devname, sizeof ksw.ksw_devname,
       "/dev/%s", devname(xsw.xsw_dev, S_IFCHR));
  ksw.ksw_used = xsw.xsw_used;
  ksw.ksw_total = xsw.xsw_nblks;
  ksw.ksw_flags = xsw.xsw_flags;
  print_swap(&ksw);
 }
 if (errno != ENOENT)
  err(1, "sysctl()");
 print_swap_total();
}
