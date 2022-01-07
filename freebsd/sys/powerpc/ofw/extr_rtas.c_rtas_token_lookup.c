
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token ;
typedef int cell_t ;


 int OF_getencprop (int ,char const*,int*,int) ;
 int rtas ;
 int rtas_exists () ;

cell_t
rtas_token_lookup(const char *method)
{
 cell_t token;

 if (!rtas_exists())
  return (-1);

 if (OF_getencprop(rtas, method, &token, sizeof(token)) == -1)
  return (-1);

 return (token);
}
