
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int dummy; } ;
struct iscsi_session_modify {unsigned int ism_session_id; int ism_conf; } ;
typedef int ism ;


 int ISCSISMODIFY ;
 int conf_from_target (int *,struct target const*) ;
 int ioctl (int,int ,struct iscsi_session_modify*) ;
 int memset (struct iscsi_session_modify*,int ,int) ;
 int xo_warn (char*) ;

__attribute__((used)) static int
kernel_modify(int iscsi_fd, unsigned int session_id, const struct target *targ)
{
 struct iscsi_session_modify ism;
 int error;

 memset(&ism, 0, sizeof(ism));
 ism.ism_session_id = session_id;
 conf_from_target(&ism.ism_conf, targ);
 error = ioctl(iscsi_fd, ISCSISMODIFY, &ism);
 if (error != 0)
  xo_warn("ISCSISMODIFY");
 return (error);
}
