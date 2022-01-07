
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsep (char**,char*) ;
 int strtoul (char*,int ,int) ;

__attribute__((used)) static int
skip_get_tokens(char *skip_addr, int *sk_addr, int max_index)
{
 char *token;
 int i;

 for (i = 0; i < max_index; i++) {
  token = strsep(&skip_addr, ":");
  if (token == ((void*)0))
   break;
  sk_addr[i] = strtoul(token, 0, 16);
 }
 return (i);
}
