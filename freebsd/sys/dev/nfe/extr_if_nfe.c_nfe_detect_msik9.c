
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int dummy; } ;


 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
nfe_detect_msik9(struct nfe_softc *sc)
{
 static const char *maker = "MSI";
 static const char *product = "K9N6PGM2-V2 (MS-7309)";
 char *m, *p;
 int found;

 found = 0;
 m = kern_getenv("smbios.planar.maker");
 p = kern_getenv("smbios.planar.product");
 if (m != ((void*)0) && p != ((void*)0)) {
  if (strcmp(m, maker) == 0 && strcmp(p, product) == 0)
   found = 1;
 }
 if (m != ((void*)0))
  freeenv(m);
 if (p != ((void*)0))
  freeenv(p);

 return (found);
}
