
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int auth; } ;
struct datalink {TYPE_1__ chap; int pap; } ;


 int auth_StopTimer (int *) ;
 int chap_ReInit (TYPE_1__*) ;

__attribute__((used)) static void
datalink_AuthReInit(struct datalink *dl)
{
  auth_StopTimer(&dl->pap);
  auth_StopTimer(&dl->chap.auth);
  chap_ReInit(&dl->chap);
}
