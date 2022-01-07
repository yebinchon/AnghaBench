
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secpolicy {TYPE_1__** req; } ;
struct secasindex {int dummy; } ;
struct ipsec_softc {int dummy; } ;
typedef int sa_family_t ;
struct TYPE_2__ {struct secasindex saidx; } ;


 struct secpolicy* ipsec_getpolicy (struct ipsec_softc*,int,int ) ;

__attribute__((used)) static struct secasindex *
ipsec_getsaidx(struct ipsec_softc *sc, int dir, sa_family_t af)
{
 struct secpolicy *sp;

 sp = ipsec_getpolicy(sc, dir, af);
 if (sp == ((void*)0))
  return (((void*)0));
 return (&sp->req[0]->saidx);
}
