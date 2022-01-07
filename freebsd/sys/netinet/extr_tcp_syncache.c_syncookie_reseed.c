
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int oddeven; int reseed; int ** key; } ;
struct tcp_syncache {TYPE_1__ secret; } ;


 int SYNCOOKIE_LIFETIME ;
 int SYNCOOKIE_SECRET_SIZE ;
 int arc4rand (int *,int ,int ) ;
 int atomic_add_rel_int (int*,int) ;
 int callout_schedule (int *,int) ;
 int hz ;

__attribute__((used)) static void
syncookie_reseed(void *arg)
{
 struct tcp_syncache *sc = arg;
 uint8_t *secbits;
 int secbit;







 secbit = (sc->secret.oddeven & 0x1) ? 0 : 1;
 secbits = sc->secret.key[secbit];
 arc4rand(secbits, SYNCOOKIE_SECRET_SIZE, 0);
 atomic_add_rel_int(&sc->secret.oddeven, 1);


 callout_schedule(&sc->secret.reseed, SYNCOOKIE_LIFETIME * hz);
}
