
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_STRING (int *,char*,scalar_t__) ;
 int ADD_U_CHAR (int *,char) ;
 int ADD_U_INT16 (int *,scalar_t__) ;
 char AUT_UPRIV ;
 int GET_TOKEN_AREA (int *,int *,scalar_t__) ;
 scalar_t__ strlen (char*) ;

token_t *
au_to_upriv(char sorf, char *priv)
{
 u_int16_t textlen;
 u_char *dptr;
 token_t *t;

 textlen = strlen(priv) + 1;
 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_char) +
     sizeof(u_int16_t) + textlen);

 ADD_U_CHAR(dptr, AUT_UPRIV);
 ADD_U_CHAR(dptr, sorf);
 ADD_U_INT16(dptr, textlen);
 ADD_STRING(dptr, priv, textlen);
 return (t);
}
