
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int u_int ;
typedef int FILE ;


 int DEFNUM ;
 int MAXLINELEN ;
 int ** calloc (int,int) ;
 int entries ;
 int err (int,int *) ;
 int eval ;
 scalar_t__ fgetws (int*,int,int *) ;
 scalar_t__ iswspace (int) ;
 int ** list ;
 int * malloc (int) ;
 int maxlength ;
 int ** realloc (int **,int) ;
 int warnx (char*) ;
 int* wcschr (int*,int) ;
 int wcscpy (int *,int*) ;
 int wcslen (int*) ;
 int width (int*) ;

__attribute__((used)) static void
input(FILE *fp)
{
 static int maxentry;
 int len;
 wchar_t *p, buf[MAXLINELEN];

 if (!list)
  if ((list = calloc((maxentry = DEFNUM), sizeof(*list))) ==
      ((void*)0))
   err(1, ((void*)0));
 while (fgetws(buf, MAXLINELEN, fp)) {
  for (p = buf; *p && iswspace(*p); ++p);
  if (!*p)
   continue;
  if (!(p = wcschr(p, L'\n'))) {
   warnx("line too long");
   eval = 1;
   continue;
  }
  *p = L'\0';
  len = width(buf);
  if (maxlength < len)
   maxlength = len;
  if (entries == maxentry) {
   maxentry += DEFNUM;
   if (!(list = realloc(list,
       (u_int)maxentry * sizeof(*list))))
    err(1, ((void*)0));
  }
  list[entries] = malloc((wcslen(buf) + 1) * sizeof(wchar_t));
  if (list[entries] == ((void*)0))
   err(1, ((void*)0));
  wcscpy(list[entries], buf);
  entries++;
 }
}
