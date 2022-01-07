
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mifi_t ;


 int MIF6_LOCK () ;
 int MIF6_UNLOCK () ;
 int del_m6if_locked (int *) ;

__attribute__((used)) static int
del_m6if(mifi_t *mifip)
{
 int cc;

 MIF6_LOCK();
 cc = del_m6if_locked(mifip);
 MIF6_UNLOCK();

 return (cc);
}
