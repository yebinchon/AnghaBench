
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
sppp_state_name(int state)
{
 switch (state) {
 case 133: return "initial";
 case 130: return "starting";
 case 135: return "closed";
 case 129: return "stopped";
 case 134: return "closing";
 case 128: return "stopping";
 case 131: return "req-sent";
 case 137: return "ack-rcvd";
 case 136: return "ack-sent";
 case 132: return "opened";
 }
 return "illegal";
}
