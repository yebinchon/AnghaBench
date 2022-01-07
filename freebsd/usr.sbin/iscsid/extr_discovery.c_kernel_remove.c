
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session_remove {int isr_session_id; } ;
struct connection {int conn_iscsi_fd; int conn_session_id; } ;
typedef int isr ;


 int ISCSISREMOVE ;
 int ioctl (int ,int ,struct iscsi_session_remove*) ;
 int log_warn (char*) ;
 int memset (struct iscsi_session_remove*,int ,int) ;

__attribute__((used)) static void
kernel_remove(const struct connection *conn)
{
 struct iscsi_session_remove isr;
 int error;

 memset(&isr, 0, sizeof(isr));
 isr.isr_session_id = conn->conn_session_id;
 error = ioctl(conn->conn_iscsi_fd, ISCSISREMOVE, &isr);
 if (error != 0)
  log_warn("ISCSISREMOVE");
}
