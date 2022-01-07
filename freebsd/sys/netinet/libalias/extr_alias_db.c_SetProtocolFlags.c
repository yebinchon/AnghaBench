
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias_link {int pflags; } ;



void
SetProtocolFlags(struct alias_link *lnk, int pflags)
{

 lnk->pflags = pflags;
}
