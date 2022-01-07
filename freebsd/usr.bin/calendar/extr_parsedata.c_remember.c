
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXCOUNT ;
 int strcpy (char*,char*) ;
 int warnx (char*,int) ;

void
remember(int *rememberindex, int *y, int *m, int *d, char **ed, int yy, int mm,
    int dd, char *extra)
{
 static int warned = 0;

 if (*rememberindex >= MAXCOUNT - 1) {
  if (warned == 0)
   warnx("Index > %d, ignored", MAXCOUNT);
  warned++;
  return;
 }
 y[*rememberindex] = yy;
 m[*rememberindex] = mm;
 d[*rememberindex] = dd;
 if (extra != ((void*)0))
  strcpy(ed[*rememberindex], extra);
 else
  ed[*rememberindex][0] = '\0';
 *rememberindex += 1;
}
