
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_DEFAULT_DEV ;
 int ENOENT ;
 int O_RDWR ;
 scalar_t__ ctl_fd ;
 int errno ;
 int kldload (char*) ;
 int log_err (int,char*,int ) ;
 int log_warn (char*) ;
 int modfind (char*) ;
 scalar_t__ open (int ,int ) ;

void
kernel_init(void)
{
 int retval, saved_errno;

 ctl_fd = open(CTL_DEFAULT_DEV, O_RDWR);
 if (ctl_fd < 0 && errno == ENOENT) {
  saved_errno = errno;
  retval = kldload("ctl");
  if (retval != -1)
   ctl_fd = open(CTL_DEFAULT_DEV, O_RDWR);
  else
   errno = saved_errno;
 }
 if (ctl_fd < 0)
  log_err(1, "failed to open %s", CTL_DEFAULT_DEV);
}
