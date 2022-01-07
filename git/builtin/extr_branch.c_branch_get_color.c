
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum color_branch { ____Placeholder_color_branch } color_branch ;


 char const** branch_colors ;
 int branch_use_color ;
 scalar_t__ want_color (int ) ;

__attribute__((used)) static const char *branch_get_color(enum color_branch ix)
{
 if (want_color(branch_use_color))
  return branch_colors[ix];
 return "";
}
