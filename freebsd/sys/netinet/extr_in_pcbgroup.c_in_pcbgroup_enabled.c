
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcbinfo {scalar_t__ ipi_npcbgroups; } ;



int
in_pcbgroup_enabled(struct inpcbinfo *pcbinfo)
{

 return (pcbinfo->ipi_npcbgroups > 0);
}
