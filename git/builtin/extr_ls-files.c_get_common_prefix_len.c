
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int get_common_prefix_len(const char *common_prefix)
{
 int common_prefix_len;

 if (!common_prefix)
  return 0;

 common_prefix_len = strlen(common_prefix);





 if (common_prefix[common_prefix_len - 1] == '/')
  common_prefix_len--;

 return common_prefix_len;
}
