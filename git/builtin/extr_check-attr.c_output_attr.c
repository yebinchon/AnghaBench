
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct attr_check {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* value; int attr; } ;


 scalar_t__ ATTR_FALSE (char const*) ;
 scalar_t__ ATTR_TRUE (char const*) ;
 scalar_t__ ATTR_UNSET (char const*) ;
 char* git_attr_name (int ) ;
 scalar_t__ nul_term_line ;
 int printf (char*,char const*,char const*,...) ;
 int quote_c_style (char const*,int *,int ,int ) ;
 int stdout ;

__attribute__((used)) static void output_attr(struct attr_check *check, const char *file)
{
 int j;
 int cnt = check->nr;

 for (j = 0; j < cnt; j++) {
  const char *value = check->items[j].value;

  if (ATTR_TRUE(value))
   value = "set";
  else if (ATTR_FALSE(value))
   value = "unset";
  else if (ATTR_UNSET(value))
   value = "unspecified";

  if (nul_term_line) {
   printf("%s%c"
          "%s%c"
          "%s%c" ,
          file, 0,
          git_attr_name(check->items[j].attr), 0, value, 0);
  } else {
   quote_c_style(file, ((void*)0), stdout, 0);
   printf(": %s: %s\n",
          git_attr_name(check->items[j].attr), value);
  }
 }
}
