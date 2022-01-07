
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int strlcpy (char*,char*,int) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
findstrconst(char **str, const char **val)
{
 char *p;
 char *tmp;
 int size;

 p = *str;
 do {
  p++;
 } while (*p && *p != '"');
 if (*p == 0) {
  error("unterminated string constant");
 }
 p++;
 size = p - *str + 1;
 tmp = xmalloc(size);
 (void) strlcpy(tmp, *str, size);
 *val = tmp;
 *str = p;
}
