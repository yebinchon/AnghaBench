
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
sctp_path_state(int state)
{
 switch (state) {
 case 128:
  return "UNCONFIRMED";
  break;
 case 130:
  return "ACTIVE";
  break;
 case 129:
  return "INACTIVE";
  break;
 default:
  return "UNKNOWN";
  break;
 }
}
