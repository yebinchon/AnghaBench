
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int dummy; } ;
struct iscsi_session_add {int isa_conf; } ;
typedef int isa ;


 int ISCSISADD ;
 int conf_from_target (int *,struct target const*) ;
 int ioctl (int,int ,struct iscsi_session_add*) ;
 int memset (struct iscsi_session_add*,int ,int) ;
 int xo_warn (char*) ;

__attribute__((used)) static int
kernel_add(int iscsi_fd, const struct target *targ)
{
 struct iscsi_session_add isa;
 int error;

 memset(&isa, 0, sizeof(isa));
 conf_from_target(&isa.isa_conf, targ);
 error = ioctl(iscsi_fd, ISCSISADD, &isa);
 if (error != 0)
  xo_warn("ISCSISADD");
 return (error);
}
