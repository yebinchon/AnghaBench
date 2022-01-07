
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 double strtod (char const*,char**) ;

__attribute__((used)) static double
e_atof(const char *num)
{
 char *endp;
 double dbl;

 errno = 0;
 dbl = strtod(num, &endp);

 if (errno == ERANGE)

  err(2, "%s", num);
 else if (*endp != '\0')

  errx(2, "invalid floating point argument: %s", num);


 if (dbl == -0.0)
  dbl = 0;
 return (dbl);
}
