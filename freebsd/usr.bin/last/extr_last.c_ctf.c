
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ noctfix ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static const char*
ctf(const char *fmt) {
 static char buf[31];
 const char *src, *end;
 char *dst;

 if (noctfix)
  return (fmt);

 end = buf + sizeof(buf);
 for (src = fmt, dst = buf; dst < end; *dst++ = *src++) {
  if (*src == '\0') {
   *dst = '\0';
   break;
  } else if (*src == '%' && *(src+1) == 's') {
   *dst++ = '%';
   *dst++ = 'h';
   *dst++ = 's';
   strlcpy(dst, src+2, end - dst);
   return (buf);
  }
 }
 return (buf);
}
