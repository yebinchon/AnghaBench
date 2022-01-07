
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int is_terminating; int is_maintenance_cv; } ;


 int cv_signal (int *) ;
 int iscsi_session_logout (struct iscsi_session*) ;

__attribute__((used)) static void
iscsi_session_terminate(struct iscsi_session *is)
{

 if (is->is_terminating)
  return;

 is->is_terminating = 1;




 cv_signal(&is->is_maintenance_cv);
}
