
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;


 int ShowAliasStats (struct libalias*) ;

void SctpShowAliasStats(struct libalias *la)
{

 ShowAliasStats(la);
}
