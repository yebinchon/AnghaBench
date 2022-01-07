
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int token_t ;


 int * au_to_return32 (char,int ) ;

token_t *
au_to_return(char status, u_int32_t ret)
{

 return (au_to_return32(status, ret));
}
