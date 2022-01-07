
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {char const* if_dname; } ;
typedef scalar_t__ if_t ;



const char *
if_getdname(if_t ifp)
{
 return ((struct ifnet *)ifp)->if_dname;
}
