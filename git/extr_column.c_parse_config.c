
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int COL_ENABLED ;
 unsigned int COL_ENABLE_MASK ;
 int ENABLE_SET ;
 int LAYOUT_SET ;
 scalar_t__ parse_option (char const*,int,unsigned int*,int*) ;
 int strcspn (char const*,char const*) ;
 int strspn (char const*,char const*) ;

__attribute__((used)) static int parse_config(unsigned int *colopts, const char *value)
{
 const char *sep = " ,";
 int group_set = 0;

 while (*value) {
  int len = strcspn(value, sep);
  if (len) {
   if (parse_option(value, len, colopts, &group_set))
    return -1;

   value += len;
  }
  value += strspn(value, sep);
 }
 if ((group_set & LAYOUT_SET) && !(group_set & ENABLE_SET))
  *colopts = (*colopts & ~COL_ENABLE_MASK) | COL_ENABLED;
 return 0;
}
