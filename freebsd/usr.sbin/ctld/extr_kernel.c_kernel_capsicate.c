
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int CAP_IOCTL ;
 unsigned long const CTL_ISCSI ;
 int cap_rights_init (int *,int ) ;
 scalar_t__ cap_sandboxed () ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_ioctls_limit (int ,unsigned long const*,int ) ;
 scalar_t__ caph_rights_limit (int ,int *) ;
 int ctl_fd ;
 int log_debugx (char*) ;
 int log_err (int,char*) ;
 int log_warnx (char*) ;
 int nitems (unsigned long const*) ;

void
kernel_capsicate(void)
{
 cap_rights_t rights;
 const unsigned long cmds[] = { CTL_ISCSI };

 cap_rights_init(&rights, CAP_IOCTL);
 if (caph_rights_limit(ctl_fd, &rights) < 0)
  log_err(1, "cap_rights_limit");

 if (caph_ioctls_limit(ctl_fd, cmds, nitems(cmds)) < 0)
  log_err(1, "cap_ioctls_limit");

 if (caph_enter() < 0)
  log_err(1, "cap_enter");

 if (cap_sandboxed())
  log_debugx("Capsicum capability mode enabled");
 else
  log_warnx("Capsicum capability mode not supported");
}
