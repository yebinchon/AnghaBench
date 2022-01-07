
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_mask_t ;


 int AUDITPIPE_FLUSH ;
 int AUDITPIPE_GET_QLIMIT_MAX ;
 int AUDITPIPE_PRESELECT_MODE_LOCAL ;
 int AUDITPIPE_SET_PRESELECT_FLAGS ;
 int AUDITPIPE_SET_PRESELECT_MODE ;
 int AUDITPIPE_SET_PRESELECT_NAFLAGS ;
 int AUDITPIPE_SET_QLIMIT ;
 int atf_tc_fail (char*,int ) ;
 int errno ;
 scalar_t__ ioctl (int,int ,...) ;
 int strerror (int ) ;

__attribute__((used)) static void
set_preselect_mode(int filedesc, au_mask_t *fmask)
{
 int qlimit_max;
 int fmode = AUDITPIPE_PRESELECT_MODE_LOCAL;


 if (ioctl(filedesc, AUDITPIPE_SET_PRESELECT_MODE, &fmode) < 0)
  atf_tc_fail("Preselection mode: %s", strerror(errno));


 if (ioctl(filedesc, AUDITPIPE_SET_PRESELECT_FLAGS, fmask) < 0)
  atf_tc_fail("Preselection flag: %s", strerror(errno));


 if (ioctl(filedesc, AUDITPIPE_SET_PRESELECT_NAFLAGS, fmask) < 0)
  atf_tc_fail("Preselection naflag: %s", strerror(errno));


 if (ioctl(filedesc, AUDITPIPE_GET_QLIMIT_MAX, &qlimit_max) < 0)
  atf_tc_fail("Query max-limit: %s", strerror(errno));


 if (ioctl(filedesc, AUDITPIPE_SET_QLIMIT, &qlimit_max) < 0)
  atf_tc_fail("Set max-qlimit: %s", strerror(errno));


 if (ioctl(filedesc, AUDITPIPE_FLUSH) < 0)
  atf_tc_fail("Auditpipe flush: %s", strerror(errno));
}
