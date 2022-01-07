
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct icl_pdu {int dummy; } ;


 int ISCSI_SESSION_LOCK (struct iscsi_session*) ;
 int ISCSI_SESSION_UNLOCK (struct iscsi_session*) ;
 struct iscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int iscsi_pdu_queue_locked (struct icl_pdu*) ;

__attribute__((used)) static void
iscsi_pdu_queue(struct icl_pdu *request)
{
 struct iscsi_session *is;

 is = PDU_SESSION(request);
 ISCSI_SESSION_LOCK(is);
 iscsi_pdu_queue_locked(request);
 ISCSI_SESSION_UNLOCK(is);
}
