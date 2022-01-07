
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int isxdigit (char const) ;
 char* progname ;
 int stderr ;
 int toint (char const) ;

__attribute__((used)) static int
getdata(const char *arg, u_int8_t *data, size_t maxlen)
{
 const char *cp = arg;
 int len;

 if (cp[0] == '0' && (cp[1] == 'x' || cp[1] == 'X'))
  cp += 2;
 len = 0;
 while (*cp) {
  int b0, b1;
  if (cp[0] == ':' || cp[0] == '-' || cp[0] == '.') {
   cp++;
   continue;
  }
  if (!isxdigit(cp[0])) {
   fprintf(stderr, "%s: invalid data value %c (not hex)\n",
    progname, cp[0]);
   exit(-1);
  }
  b0 = toint(cp[0]);
  if (cp[1] != '\0') {
   if (!isxdigit(cp[1])) {
    fprintf(stderr, "%s: invalid data value %c "
     "(not hex)\n", progname, cp[1]);
    exit(-1);
   }
   b1 = toint(cp[1]);
   cp += 2;
  } else {
   b1 = b0, b0 = 0;
   cp += 1;
  }
  if (len > maxlen) {
   fprintf(stderr,
    "%s: too much data in %s, max %llu bytes\n",
    progname, arg, (unsigned long long) maxlen);
  }
  data[len++] = (b0<<4) | b1;
 }
 return len;
}
