
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long
elf_hash(const char *name)
{
 unsigned long h, g;
 const unsigned char *p;

 h = 0;
 p = (const unsigned char *)name;
 while (*p != '\0') {
  h = (h << 4) + *p++;
  if ((g = h & 0xf0000000) != 0)
   h ^= g >> 24;
  h &= ~g;
 }
 return (h);
}
