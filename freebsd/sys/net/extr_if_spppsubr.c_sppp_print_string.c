
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef char u_char ;


 int log (int,char*,char) ;

__attribute__((used)) static void
sppp_print_string(const char *p, u_short len)
{
 u_char c;

 while (len-- > 0) {
  c = *p++;



  if (c < ' ' || c > '~')
   log(-1, "\\x%x", c);
  else
   log(-1, "%c", c);
 }
}
