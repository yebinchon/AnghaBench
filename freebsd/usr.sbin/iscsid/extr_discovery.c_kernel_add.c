
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ isc_discovery; int isc_target; } ;
struct iscsi_session_add {TYPE_1__ isa_conf; } ;
struct connection {int conn_iscsi_fd; int conn_conf; } ;
typedef int isa ;


 int ISCSISADD ;
 int ioctl (int ,int ,struct iscsi_session_add*) ;
 int log_warn (char*,char const*) ;
 int memcpy (TYPE_1__*,int *,int) ;
 int memset (struct iscsi_session_add*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
kernel_add(const struct connection *conn, const char *target)
{
 struct iscsi_session_add isa;
 int error;

 memset(&isa, 0, sizeof(isa));
 memcpy(&isa.isa_conf, &conn->conn_conf, sizeof(isa.isa_conf));
 strlcpy(isa.isa_conf.isc_target, target,
     sizeof(isa.isa_conf.isc_target));
 isa.isa_conf.isc_discovery = 0;
 error = ioctl(conn->conn_iscsi_fd, ISCSISADD, &isa);
 if (error != 0)
  log_warn("failed to add %s: ISCSISADD", target);
}
