
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char*,char const* const) ;

void
Concatinate(char *buf, size_t sz, int argc, const char *const *argv)
{
  int i, n;
  unsigned pos;

  *buf = '\0';
  for (pos = i = 0; i < argc; i++) {
    n = snprintf(buf + pos, sz - pos, "%s%s", i ? " " : "", argv[i]);
    if (n < 0) {
      buf[pos] = '\0';
      break;
    }
    if ((pos += n) >= sz)
      break;
  }
}
