
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {int dummy; } ;


 int build_command_for_exp (struct expression*) ;
 int command ;
 int expression ;
 char* threshold ;
 int user_expr ;

__attribute__((used)) static void
set_manual_exp(struct expression *exp)
{
 expression = user_expr;
 command = build_command_for_exp(exp);
 threshold = "User defined threshold";
}
