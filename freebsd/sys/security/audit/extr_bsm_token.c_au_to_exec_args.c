
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_MEM (int *,char const*,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT32 (int *,int) ;
 int AUT_EXEC_ARGS ;
 int GET_TOKEN_AREA (int *,int *,int) ;
 int strlen (char const*) ;

token_t *
au_to_exec_args(char **argv)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 const char *nextarg;
 int i, count = 0;
 size_t totlen = 0;

 nextarg = *argv;

 while (nextarg != ((void*)0)) {
  int nextlen;

  nextlen = strlen(nextarg);
  totlen += nextlen + 1;
  count++;
  nextarg = *(argv + count);
 }

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int32_t) + totlen);

 ADD_U_CHAR(dptr, AUT_EXEC_ARGS);
 ADD_U_INT32(dptr, count);

 for (i = 0; i < count; i++) {
  nextarg = *(argv + i);
  ADD_MEM(dptr, nextarg, strlen(nextarg) + 1);
 }

 return (t);
}
