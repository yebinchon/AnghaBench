
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int SCTP_CLOSED ;
 int SCTP_COOKIE_ECHOED ;
 int SCTP_COOKIE_WAIT ;
 int SCTP_ESTABLISHED ;
 int SCTP_SHUTDOWN_ACK_SENT ;
 int SCTP_SHUTDOWN_PENDING ;
 int SCTP_SHUTDOWN_RECEIVED ;
 int SCTP_SHUTDOWN_SENT ;




 int SCTP_STATE_MASK ;


 int SCTP_STATE_SHUTDOWN_PENDING ;


 int SCTP_STATE_WAS_ABORTED ;

int32_t
sctp_map_assoc_state(int kernel_state)
{
 int32_t user_state;

 if (kernel_state & SCTP_STATE_WAS_ABORTED) {
  user_state = SCTP_CLOSED;
 } else if (kernel_state & SCTP_STATE_SHUTDOWN_PENDING) {
  user_state = SCTP_SHUTDOWN_PENDING;
 } else {
  switch (kernel_state & SCTP_STATE_MASK) {
  case 133:
   user_state = SCTP_CLOSED;
   break;
  case 132:
   user_state = SCTP_CLOSED;
   break;
  case 134:
   user_state = SCTP_COOKIE_WAIT;
   break;
  case 135:
   user_state = SCTP_COOKIE_ECHOED;
   break;
  case 131:
   user_state = SCTP_ESTABLISHED;
   break;
  case 128:
   user_state = SCTP_SHUTDOWN_SENT;
   break;
  case 129:
   user_state = SCTP_SHUTDOWN_RECEIVED;
   break;
  case 130:
   user_state = SCTP_SHUTDOWN_ACK_SENT;
   break;
  default:
   user_state = SCTP_CLOSED;
   break;
  }
 }
 return (user_state);
}
