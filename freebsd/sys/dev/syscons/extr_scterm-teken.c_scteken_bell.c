
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bell_duration; int bell_pitch; } ;
typedef TYPE_1__ scr_stat ;


 int sc_bell (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
scteken_bell(void *arg)
{
 scr_stat *scp = arg;

 sc_bell(scp, scp->bell_pitch, scp->bell_duration);
}
