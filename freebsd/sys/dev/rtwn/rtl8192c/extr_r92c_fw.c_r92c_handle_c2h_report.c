
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int r92c_handle_c2h_task ;
 int rtwn_cmd_sleepable (struct rtwn_softc*,int *,int ,int ) ;

void
r92c_handle_c2h_report(void *arg)
{
 struct rtwn_softc *sc = arg;

 rtwn_cmd_sleepable(sc, ((void*)0), 0, r92c_handle_c2h_task);
}
