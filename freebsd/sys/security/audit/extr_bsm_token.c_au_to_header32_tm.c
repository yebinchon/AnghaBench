
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
typedef int token_t ;
struct timeval {int tv_usec; int tv_sec; } ;
typedef int au_event_t ;
typedef int au_emod_t ;


 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,int ) ;
 int ADD_U_INT32 (int *,int) ;
 int AUDIT_HEADER_VERSION_OPENBSM ;
 int AUT_HEADER32 ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_header32_tm(int rec_size, au_event_t e_type, au_emod_t e_mod,
    struct timeval tm)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 u_int32_t timems;

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int32_t) +
     sizeof(u_char) + 2 * sizeof(u_int16_t) + 2 * sizeof(u_int32_t));

 ADD_U_CHAR(dptr, AUT_HEADER32);
 ADD_U_INT32(dptr, rec_size);
 ADD_U_CHAR(dptr, AUDIT_HEADER_VERSION_OPENBSM);
 ADD_U_INT16(dptr, e_type);
 ADD_U_INT16(dptr, e_mod);

 timems = tm.tv_usec/1000;

 ADD_U_INT32(dptr, tm.tv_sec);
 ADD_U_INT32(dptr, timems);

 return (t);
}
