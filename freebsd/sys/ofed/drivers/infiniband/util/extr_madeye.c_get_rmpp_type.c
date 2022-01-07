
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;







__attribute__((used)) static char * get_rmpp_type(u8 rmpp_type)
{
 switch (rmpp_type) {
 case 129:
  return "Data";
 case 130:
  return "Ack";
 case 128:
  return "Stop";
 case 131:
  return "Abort";
 default:
  return "Unknown";
 }
}
