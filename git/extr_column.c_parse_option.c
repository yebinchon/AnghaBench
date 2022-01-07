
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct colopt {char* member_0; int member_2; int mask; char* name; unsigned int value; int member_1; } ;


 int ARRAY_SIZE (struct colopt*) ;
 int COL_AUTO ;
 int COL_COLUMN ;
 int COL_DENSE ;
 int COL_DISABLED ;
 int COL_ENABLED ;


 int COL_PLAIN ;
 int COL_ROW ;
 int ENABLE_SET ;
 int LAYOUT_SET ;
 int error (char*,char const*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int parse_option(const char *arg, int len, unsigned int *colopts,
   int *group_set)
{
 struct colopt opts[] = {
  { "always", COL_ENABLED, 129 },
  { "never", COL_DISABLED, 129 },
  { "auto", COL_AUTO, 129 },
  { "plain", COL_PLAIN, 128 },
  { "column", COL_COLUMN, 128 },
  { "row", COL_ROW, 128 },
  { "dense", COL_DENSE, 0 },
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(opts); i++) {
  int set = 1, arg_len = len, name_len;
  const char *arg_str = arg;

  if (!opts[i].mask) {
   if (arg_len > 2 && !strncmp(arg_str, "no", 2)) {
    arg_str += 2;
    arg_len -= 2;
    set = 0;
   }
  }

  name_len = strlen(opts[i].name);
  if (arg_len != name_len ||
      strncmp(arg_str, opts[i].name, name_len))
   continue;

  switch (opts[i].mask) {
  case 129:
   *group_set |= ENABLE_SET;
   break;
  case 128:
   *group_set |= LAYOUT_SET;
   break;
  }

  if (opts[i].mask)
   *colopts = (*colopts & ~opts[i].mask) | opts[i].value;
  else {
   if (set)
    *colopts |= opts[i].value;
   else
    *colopts &= ~opts[i].value;
  }
  return 0;
 }

 return error("unsupported option '%s'", arg);
}
