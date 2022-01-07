
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* copy_toeval ;
 int end_result ;
 int yy_scan_string (char const*) ;
 int yyparse () ;

int
expr(const char *toeval)
{
 copy_toeval = toeval;
 yy_scan_string(toeval);
 yyparse();
 return end_result;
}
