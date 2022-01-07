
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int error (int ,int) ;
 int git_config_get_int (char*,int*) ;

int git_config_get_max_percent_split_change(void)
{
 int val = -1;

 if (!git_config_get_int("splitindex.maxpercentchange", &val)) {
  if (0 <= val && val <= 100)
   return val;

  return error(_("splitIndex.maxPercentChange value '%d' "
          "should be between 0 and 100"), val);
 }

 return -1;
}
