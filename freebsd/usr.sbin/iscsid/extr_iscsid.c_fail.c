
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_daemon_fail {int idf_reason; int idf_session_id; } ;
struct connection {int conn_iscsi_fd; int conn_session_id; } ;
typedef int idf ;


 int ISCSIDFAIL ;
 int errno ;
 int ioctl (int ,int ,struct iscsi_daemon_fail*) ;
 int log_err (int,char*) ;
 int memset (struct iscsi_daemon_fail*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

void
fail(const struct connection *conn, const char *reason)
{
 struct iscsi_daemon_fail idf;
 int error, saved_errno;

 saved_errno = errno;

 memset(&idf, 0, sizeof(idf));
 idf.idf_session_id = conn->conn_session_id;
 strlcpy(idf.idf_reason, reason, sizeof(idf.idf_reason));

 error = ioctl(conn->conn_iscsi_fd, ISCSIDFAIL, &idf);
 if (error != 0)
  log_err(1, "ISCSIDFAIL");

 errno = saved_errno;
}
