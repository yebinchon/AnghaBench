
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
g_raid3_disk_state2str(int state)
{

 switch (state) {
 case 131:
  return ("NODISK");
 case 130:
  return ("NONE");
 case 132:
  return ("NEW");
 case 134:
  return ("ACTIVE");
 case 129:
  return ("STALE");
 case 128:
  return ("SYNCHRONIZING");
 case 133:
  return ("DISCONNECTED");
 default:
  return ("INVALID");
 }
}
