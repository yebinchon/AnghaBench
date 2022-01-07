
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
handledash(char *buffer, char *end, const char *src)
{
 char *p;

 p = buffer;
 while(*src) {
  if (src[1] == '-' && src[2]) {
   unsigned char i;
   if ((unsigned char)src[0] <= (unsigned char)src[2]) {
    for (i = (unsigned char)src[0];
        i <= (unsigned char)src[2]; i++) {
     *p++ = i;
     if (p == end) {
      *p = '\0';
      return buffer;
     }
    }
   } else {
    for (i = (unsigned char)src[0];
        i >= (unsigned char)src[2]; i--) {
     *p++ = i;
     if (p == end) {
      *p = '\0';
      return buffer;
     }
    }
   }
   src += 3;
  } else
   *p++ = *src++;
  if (p == end)
   break;
 }
 *p = '\0';
 return buffer;
}
