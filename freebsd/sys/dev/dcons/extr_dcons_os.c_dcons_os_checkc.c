
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_softc {int dummy; } ;


 int EVENTHANDLER_INVOKE (int ,int ) ;
 int dcons_os_checkc_nopoll (struct dcons_softc*) ;
 int dcons_poll ;

__attribute__((used)) static int
dcons_os_checkc(struct dcons_softc *dc)
{
 EVENTHANDLER_INVOKE(dcons_poll, 0);
 return (dcons_os_checkc_nopoll(dc));
}
