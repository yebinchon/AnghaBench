
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ee_rdEdgesPower; } ;
struct TYPE_3__ {scalar_t__ rdEdge; int flag; } ;
typedef TYPE_1__ RD_EDGES_POWER ;
typedef int FILE ;


 size_t NUM_EDGES ;
 size_t curctl ;
 TYPE_2__ eeprom ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
printEdgeFlag(FILE *fd, int edge)
{
 const RD_EDGES_POWER *pRdEdgePwrInfo =
     &eeprom.ee_rdEdgesPower[curctl*NUM_EDGES];

 if (pRdEdgePwrInfo[edge].rdEdge == 0)
  fprintf(fd, "--");
 else
                fprintf(fd, " %1d", pRdEdgePwrInfo[edge].flag);
}
