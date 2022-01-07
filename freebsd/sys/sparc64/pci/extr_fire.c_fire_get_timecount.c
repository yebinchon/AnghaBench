
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {struct fire_softc* tc_priv; } ;
struct fire_softc {int dummy; } ;


 int FIRE_CTRL_READ_8 (struct fire_softc*,int ) ;
 int FO_XBC_PRF_CNT0 ;
 int TC_COUNTER_MAX_MASK ;

__attribute__((used)) static u_int
fire_get_timecount(struct timecounter *tc)
{
 struct fire_softc *sc;

 sc = tc->tc_priv;
 return (FIRE_CTRL_READ_8(sc, FO_XBC_PRF_CNT0) & TC_COUNTER_MAX_MASK);
}
