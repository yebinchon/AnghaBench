
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct chipc_softc {struct rman mem_rman; } ;





__attribute__((used)) static struct rman *
chipc_get_rman(struct chipc_softc *sc, int type)
{
 switch (type) {
 case 128:
  return (&sc->mem_rman);

 case 129:

  return (((void*)0));

 default:
  return (((void*)0));
 };
}
