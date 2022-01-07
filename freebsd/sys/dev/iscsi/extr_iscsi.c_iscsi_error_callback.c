
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct icl_conn {int dummy; } ;


 struct iscsi_session* CONN_SESSION (struct icl_conn*) ;
 int ISCSI_SESSION_WARN (struct iscsi_session*,char*) ;
 int iscsi_session_reconnect (struct iscsi_session*) ;

__attribute__((used)) static void
iscsi_error_callback(struct icl_conn *ic)
{
 struct iscsi_session *is;

 is = CONN_SESSION(ic);

 ISCSI_SESSION_WARN(is, "connection error; reconnecting");
 iscsi_session_reconnect(is);
}
