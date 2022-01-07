
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int rtwn_cmd_sleepable (struct rtwn_softc*,int *,int ,int ) ;
 int rtwn_set_pwrmode_cb ;

__attribute__((used)) static void
rtwn_pwrmode_init(void *arg)
{
 struct rtwn_softc *sc = arg;

 rtwn_cmd_sleepable(sc, ((void*)0), 0, rtwn_set_pwrmode_cb);
}
