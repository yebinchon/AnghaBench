
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int dummy; } ;
struct iscsi_session_remove {int isr_conf; } ;
typedef int isr ;


 int ISCSISREMOVE ;
 int conf_from_target (int *,struct target const*) ;
 int ioctl (int,int ,struct iscsi_session_remove*) ;
 int memset (struct iscsi_session_remove*,int ,int) ;
 int xo_warn (char*) ;

__attribute__((used)) static int
kernel_remove(int iscsi_fd, const struct target *targ)
{
 struct iscsi_session_remove isr;
 int error;

 memset(&isr, 0, sizeof(isr));
 conf_from_target(&isr.isr_conf, targ);
 error = ioctl(iscsi_fd, ISCSISREMOVE, &isr);
 if (error != 0)
  xo_warn("ISCSISREMOVE");
 return (error);
}
