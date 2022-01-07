
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ARRAY_SIZE (char const**) ;

const char *t4_link_down_rc_str(unsigned char link_down_rc)
{
 static const char *reason[] = {
  "Link Down",
  "Remote Fault",
  "Auto-negotiation Failure",
  "Reserved3",
  "Insufficient Airflow",
  "Unable To Determine Reason",
  "No RX Signal Detected",
  "Reserved7",
 };

 if (link_down_rc >= ARRAY_SIZE(reason))
  return "Bad Reason Code";

 return reason[link_down_rc];
}
