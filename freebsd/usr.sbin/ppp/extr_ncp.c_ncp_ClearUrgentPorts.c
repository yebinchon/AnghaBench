
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_range {scalar_t__ nports; } ;



void
ncp_ClearUrgentPorts(struct port_range *range)
{
  range->nports = 0;
}
