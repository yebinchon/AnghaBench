
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bce_softc {scalar_t__ bce_chipid; } ;
struct TYPE_3__ {scalar_t__ id; int prod; } ;


 int freeenv (char*) ;
 TYPE_1__* hs21_type_lists ;
 char* kern_getenv (char*) ;
 int nitems (TYPE_1__*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;

__attribute__((used)) static int
detect_hs21(struct bce_softc *bce_sc)
{
 char *sysenv;
 int found, i;

 found = 0;
 sysenv = kern_getenv("smbios.system.product");
 if (sysenv == ((void*)0))
  return (found);
 for (i = 0; i < nitems(hs21_type_lists); i++) {
  if (bce_sc->bce_chipid == hs21_type_lists[i].id &&
      strncmp(sysenv, hs21_type_lists[i].prod,
      strlen(hs21_type_lists[i].prod)) == 0) {
   found++;
   break;
  }
 }
 freeenv(sysenv);
 return (found);
}
