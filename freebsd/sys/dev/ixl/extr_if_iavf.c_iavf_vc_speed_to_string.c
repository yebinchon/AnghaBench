
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum virtchnl_link_speed { ____Placeholder_virtchnl_link_speed } virtchnl_link_speed ;
char *
iavf_vc_speed_to_string(enum virtchnl_link_speed link_speed)
{
 int index;

 char *speeds[] = {
  "Unknown",
  "100 Mbps",
  "1 Gbps",
  "10 Gbps",
  "40 Gbps",
  "20 Gbps",
  "25 Gbps",
 };

 switch (link_speed) {
 case 134:
  index = 1;
  break;
 case 132:
  index = 2;
  break;
 case 133:
  index = 3;
  break;
 case 129:
  index = 4;
  break;
 case 131:
  index = 5;
  break;
 case 130:
  index = 6;
  break;
 case 128:
 default:
  index = 0;
  break;
 }

 return speeds[index];
}
