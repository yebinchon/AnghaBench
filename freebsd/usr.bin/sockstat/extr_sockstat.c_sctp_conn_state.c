
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
sctp_conn_state(int state)
{
 switch (state) {
 case 136:
  return "CLOSED";
  break;
 case 137:
  return "BOUND";
  break;
 case 132:
  return "LISTEN";
  break;
 case 134:
  return "COOKIE_WAIT";
  break;
 case 135:
  return "COOKIE_ECHOED";
  break;
 case 133:
  return "ESTABLISHED";
  break;
 case 128:
  return "SHUTDOWN_SENT";
  break;
 case 129:
  return "SHUTDOWN_RECEIVED";
  break;
 case 131:
  return "SHUTDOWN_ACK_SENT";
  break;
 case 130:
  return "SHUTDOWN_PENDING";
  break;
 default:
  return "UNKNOWN";
  break;
 }
}
