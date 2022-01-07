
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigitch (char const) ;

int
calc_jobnum(const char *cfname, const char **hostpp)
{
 int jnum;
 const char *cp, *numstr, *hoststr;

 numstr = cfname + 3;
 if (!isdigitch(*numstr))
  numstr++;
 jnum = 0;
 for (cp = numstr; (cp < numstr + 5) && isdigitch(*cp); cp++)
  jnum = jnum * 10 + (*cp - '0');
 hoststr = cp;





 while(isdigitch(*cp))
  cp++;
 if (*cp == '.') {
  jnum = 0;
  for (cp = numstr; (cp < numstr + 3) && isdigitch(*cp); cp++)
   jnum = jnum * 10 + (*cp - '0');
  hoststr = cp;
 }
 if (hostpp != ((void*)0))
  *hostpp = hoststr;
 return (jnum);
}
