
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CleaningUp; } ;


 int CLOSE_STAYDOWN ;
 TYPE_1__* SignalBundle ;
 int bundle_Close (TYPE_1__*,int *,int ) ;

void
Cleanup()
{
  SignalBundle->CleaningUp = 1;
  bundle_Close(SignalBundle, ((void*)0), CLOSE_STAYDOWN);
}
