
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sival_int; } ;
struct TYPE_5__ {scalar_t__ si_code; TYPE_1__ si_value; } ;
typedef TYPE_2__ siginfo_t ;


 scalar_t__ SI_QUEUE ;
 int errx (int,char*) ;
 scalar_t__ received ;

void
handler(int sig, siginfo_t *si, void *ctx)
{
 if (si->si_code != SI_QUEUE)
  errx(1, "si_code != SI_QUEUE");
 if (si->si_value.sival_int != received)
  errx(1, "signal is out of order");
 received++;
}
