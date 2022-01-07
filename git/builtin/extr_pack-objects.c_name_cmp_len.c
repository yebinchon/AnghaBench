
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int name_cmp_len(const char *name)
{
 int i;
 for (i = 0; name[i] && name[i] != '\n' && name[i] != '/'; i++)
  ;
 return i;
}
