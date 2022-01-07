
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSHSIZE ;

__attribute__((used)) static int
hash(const char name[])
{
 register int h;
 register const char *cp;

 for (cp = name, h = 0; *cp; h = (h << 2) + *cp++)
  ;
 return((h & 0x7fffffff) % HSHSIZE);
}
