
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ isp_loopstate; int isp_topo; } ;
typedef TYPE_1__ fcparam ;


 scalar_t__ LOOP_HAVE_ADDR ;






const char *
isp_fc_toponame(fcparam *fcp)
{

 if (fcp->isp_loopstate < LOOP_HAVE_ADDR) {
  return "Unavailable";
 }
 switch (fcp->isp_topo) {
 case 130: return "Private Loop (NL_Port)";
 case 132: return "Public Loop (FL_Port)";
 case 129: return "Point-to-Point (N_Port)";
 case 131: return "Fabric (F_Port)";
 case 128: return "Point-to-Point (no response)";
 default: return "?????";
 }
}
