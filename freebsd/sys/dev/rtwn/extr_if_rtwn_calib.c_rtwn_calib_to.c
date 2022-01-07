
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int rtwn_calib_cb ;
 int rtwn_cmd_sleepable (struct rtwn_softc*,int *,int ,int ) ;

void
rtwn_calib_to(void *arg)
{
 struct rtwn_softc *sc = arg;


 rtwn_cmd_sleepable(sc, ((void*)0), 0, rtwn_calib_cb);
}
