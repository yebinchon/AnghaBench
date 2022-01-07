
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSHSIZE ;

int
hash(const char *name)
{
 int h = 0;

 while (*name != '\0') {
  h <<= 2;
  h += *name++;
 }
 if (h < 0 && (h = -h) < 0)
  h = 0;
 return (h % HSHSIZE);
}
