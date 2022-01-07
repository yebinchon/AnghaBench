
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int dummy; } ;






 int errx (int,char*,char const*,...) ;
 int getprintcap (char const*,struct printer*) ;
 int init_printer (struct printer*) ;
 int pcaperr (int) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
chkprinter(const char *ptrname, struct printer *pp)
{
 int status;

 init_printer(pp);
 status = getprintcap(ptrname, pp);
 switch(status) {
 case 130:
 case 129:
  errx(1, "%s: %s", ptrname, pcaperr(status));
 case 131:
  errx(1, "%s: unknown printer", ptrname);
 case 128:
  warnx("%s: unresolved tc= reference(s)", ptrname);
 }
}
