
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicy {int dummy; } ;
struct ipsec_softc {struct secpolicy** sp; } ;
typedef int sa_family_t ;




 int IPSEC_DIR_INBOUND ;

__attribute__((used)) static struct secpolicy *
ipsec_getpolicy(struct ipsec_softc *sc, int dir, sa_family_t af)
{

 switch (af) {
 }
 return (((void*)0));
}
