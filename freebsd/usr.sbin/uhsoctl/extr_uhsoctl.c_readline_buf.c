
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
readline_buf(const char *s, const char *e, char *buf, size_t bufsz)
{
 int pos = 0;
 char *p = buf;

 for (; s < e; s++) {
  *p = *s;
  pos++;
  if (pos >= (bufsz - 1))
   break;
  if (*p++ == '\n')
   break;
 }
 *p = '\0';
 return (pos);
}
