
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LINENUM ;


 int LINENUM_MAX ;
 int fatal (char*,int ,char*,char const*) ;
 scalar_t__ isdigit (unsigned char) ;
 int malformed () ;
 int p_input_line ;
 int strtonum (char*,int ,int ,char const**) ;

__attribute__((used)) static LINENUM
strtolinenum(char *nptr, char **endptr)
{
 LINENUM rv;
 char c;
 char *p;
 const char *errstr;

 for (p = nptr; isdigit((unsigned char)*p); p++)
  ;

 if (p == nptr)
  malformed();

 c = *p;
 *p = '\0';

 rv = strtonum(nptr, 0, LINENUM_MAX, &errstr);
 if (errstr != ((void*)0))
  fatal("invalid line number at line %ld: `%s' is %s\n",
      p_input_line, nptr, errstr);

 *p = c;
 *endptr = p;

 return rv;
}
