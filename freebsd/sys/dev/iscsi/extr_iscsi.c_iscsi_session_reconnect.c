
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int is_reconnecting; int is_maintenance_cv; } ;


 int cv_signal (int *) ;

__attribute__((used)) static void
iscsi_session_reconnect(struct iscsi_session *is)
{






 if (is->is_reconnecting)
  return;

 is->is_reconnecting = 1;
 cv_signal(&is->is_maintenance_cv);
}
