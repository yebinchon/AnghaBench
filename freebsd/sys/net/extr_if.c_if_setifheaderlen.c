
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_hdrlen; } ;
typedef scalar_t__ if_t ;



int
if_setifheaderlen(if_t ifp, int len)
{
 ((struct ifnet *)ifp)->if_hdrlen = len;
 return (0);
}
