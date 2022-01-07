
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *skip_tree_prefix(int p_value,
        const char *line,
        int llen)
{
 int nslash;
 int i;

 if (!p_value)
  return (llen && line[0] == '/') ? ((void*)0) : line;

 nslash = p_value;
 for (i = 0; i < llen; i++) {
  int ch = line[i];
  if (ch == '/' && --nslash <= 0)
   return (i == 0) ? ((void*)0) : &line[i + 1];
 }
 return ((void*)0);
}
