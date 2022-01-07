
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int printer; } ;






 int err (int ,char*) ;
 int errx (int ,char*,int) ;
 int problems ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
interpret_error(const struct printer *pp, int error)
{
 switch(error) {
 case 131:
  err(++problems, "reading printer database");
 case 129:
  ++problems;
  warnx("%s: loop detected in tc= expansion", pp->printer);
  return 1;
 case 128:
  warnx("%s: unresolved tc= expansion", pp->printer);
  return 1;
 case 130:
  break;
 default:
  errx(++problems, "unknown printcap library error %d", error);
 }
 return 0;
}
