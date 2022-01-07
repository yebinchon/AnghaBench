
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conditional; char const* type; int speed; int * porttype; struct TYPE_3__* next; } ;
typedef TYPE_1__ MAP ;







 int Ospeed ;
 TYPE_1__* maplist ;
 int strcmp (int *,char const*) ;

const char *
mapped(const char *type)
{
 MAP *mapp;
 int match;

 match = 0;
 for (mapp = maplist; mapp; mapp = mapp->next)
  if (mapp->porttype == ((void*)0) || !strcmp(mapp->porttype, type)) {
   switch (mapp->conditional) {
   case 0:
    match = 1;
    break;
   case 132:
    match = (Ospeed == mapp->speed);
    break;
   case 131:
    match = (Ospeed >= mapp->speed);
    break;
   case 130:
    match = (Ospeed > mapp->speed);
    break;
   case 129:
    match = (Ospeed <= mapp->speed);
    break;
   case 128:
    match = (Ospeed < mapp->speed);
    break;
   }
   if (match)
    return (mapp->type);
  }

 return (type);
}
