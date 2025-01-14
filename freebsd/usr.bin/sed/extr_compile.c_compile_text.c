
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lbuf ;


 int EATSPACE () ;
 int _POSIX2_LINE_MAX ;
 int * cu_fgets (char*,int,int *) ;
 int err (int,char*) ;
 char* malloc (int) ;
 char* realloc (char*,int) ;

__attribute__((used)) static char *
compile_text(void)
{
 int asize, esc_nl, size;
 char *text, *p, *op, *s;
 char lbuf[_POSIX2_LINE_MAX + 1];

 asize = 2 * _POSIX2_LINE_MAX + 1;
 if ((text = malloc(asize)) == ((void*)0))
  err(1, "malloc");
 size = 0;
 while (cu_fgets(lbuf, sizeof(lbuf), ((void*)0)) != ((void*)0)) {
  op = s = text + size;
  p = lbuf;



  for (esc_nl = 0; *p != '\0'; p++) {
   if (*p == '\\' && p[1] != '\0' && *++p == '\n')
    esc_nl = 1;
   *s++ = *p;
  }
  size += s - op;
  if (!esc_nl) {
   *s = '\0';
   break;
  }
  if (asize - size < _POSIX2_LINE_MAX + 1) {
   asize *= 2;
   if ((text = realloc(text, asize)) == ((void*)0))
    err(1, "realloc");
  }
 }
 text[size] = '\0';
 if ((p = realloc(text, size + 1)) == ((void*)0))
  err(1, "realloc");
 return (p);
}
