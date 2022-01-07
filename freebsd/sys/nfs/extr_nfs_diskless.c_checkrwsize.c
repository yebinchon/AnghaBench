
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,unsigned long) ;

__attribute__((used)) static int
checkrwsize(unsigned long v, const char *name)
{






 if (!(4 <= v && v <= 32*1024)) {
  printf("nfs_parse_options: invalid %s %lu ignored\n", name, v);
  return 0;
 } else
  return 1;
}
