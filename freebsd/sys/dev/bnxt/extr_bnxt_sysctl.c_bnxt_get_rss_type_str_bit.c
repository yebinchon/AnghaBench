
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* bnxt_hash_types ;
 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static int bnxt_get_rss_type_str_bit(char *str)
{
 int i;

 for (i=0; bnxt_hash_types[i]; i++)
  if (strcmp(bnxt_hash_types[i], str) == 0)
   return i;

 return -1;
}
