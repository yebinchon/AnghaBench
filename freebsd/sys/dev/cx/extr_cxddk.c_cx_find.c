
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ port_t ;


 int NBRD ;
 scalar_t__ cx_probe_board (scalar_t__,int,int) ;
 scalar_t__* porttab ;

int cx_find (port_t *board_ports)
{
 int i, n;

 for (i=0, n=0; porttab[i] && n<NBRD; i++)
  if (cx_probe_board (porttab[i], -1, -1))
   board_ports[n++] = porttab[i];
 return n;
}
