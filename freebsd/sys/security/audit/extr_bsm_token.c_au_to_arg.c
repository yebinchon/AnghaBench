
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int token_t ;


 int * au_to_arg32 (char,char const*,int ) ;

token_t *
au_to_arg(char n, const char *text, u_int32_t v)
{

 return (au_to_arg32(n, text, v));
}
