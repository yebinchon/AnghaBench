
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ u_int16_t ;
typedef int u_char ;
typedef int token_t ;
struct timeval {int tv_usec; int tv_sec; } ;


 int ADD_STRING (int *,char const*,scalar_t__) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,scalar_t__) ;
 int ADD_U_INT32 (int *,int) ;
 int AUT_OTHER_FILE32 ;
 int GET_TOKEN_AREA (int *,int *,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

token_t *
au_to_file(const char *file, struct timeval tm)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 u_int16_t filelen;
 u_int32_t timems;

 filelen = strlen(file);
 filelen += 1;

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + 2 * sizeof(u_int32_t) +
     sizeof(u_int16_t) + filelen);

 timems = tm.tv_usec/1000;

 ADD_U_CHAR(dptr, AUT_OTHER_FILE32);
 ADD_U_INT32(dptr, tm.tv_sec);
 ADD_U_INT32(dptr, timems);
 ADD_U_INT16(dptr, filelen);
 ADD_STRING(dptr, file, filelen);

 return (t);
}
