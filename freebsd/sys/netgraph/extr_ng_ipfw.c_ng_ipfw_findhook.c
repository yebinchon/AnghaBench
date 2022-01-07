
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef int node_p ;
typedef int * hook_p ;


 int * ng_ipfw_findhook1 (int ,scalar_t__) ;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static hook_p
ng_ipfw_findhook(node_p node, const char *name)
{
 u_int16_t n;
 char *endptr;

 n = (u_int16_t)strtol(name, &endptr, 10);
 if (*endptr != '\0')
  return ((void*)0);
 return ng_ipfw_findhook1(node, n);
}
