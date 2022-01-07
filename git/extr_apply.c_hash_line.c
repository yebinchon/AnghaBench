
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int isspace (char const) ;

__attribute__((used)) static uint32_t hash_line(const char *cp, size_t len)
{
 size_t i;
 uint32_t h;
 for (i = 0, h = 0; i < len; i++) {
  if (!isspace(cp[i])) {
   h = h * 3 + (cp[i] & 0xff);
  }
 }
 return h;
}
