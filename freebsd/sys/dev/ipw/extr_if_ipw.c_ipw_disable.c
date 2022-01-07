
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int flags; } ;


 int DPRINTF (char*) ;
 int IPW_CMD_DISABLE ;
 int IPW_FLAG_ENABLED ;
 int ipw_cmd (struct ipw_softc*,int ,int *,int ) ;
 int ipw_waitfordisable (struct ipw_softc*,int) ;

__attribute__((used)) static int
ipw_disable(struct ipw_softc *sc)
{
 int error;

 if (sc->flags & IPW_FLAG_ENABLED) {
  DPRINTF(("Disable adapter\n"));
  error = ipw_cmd(sc, IPW_CMD_DISABLE, ((void*)0), 0);
  if (error != 0)
   return error;
  error = ipw_waitfordisable(sc, 1);
  if (error != 0)
   return error;
  sc->flags &= ~IPW_FLAG_ENABLED;
 }
 return 0;
}
