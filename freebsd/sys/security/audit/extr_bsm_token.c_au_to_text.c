
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_STRING (int *,char const*,scalar_t__) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,scalar_t__) ;
 int AUT_TEXT ;
 int GET_TOKEN_AREA (int *,int *,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

token_t *
au_to_text(const char *text)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 u_int16_t textlen;

 textlen = strlen(text);
 textlen += 1;



 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int16_t) + textlen);

 ADD_U_CHAR(dptr, AUT_TEXT);
 ADD_U_INT16(dptr, textlen);
 ADD_STRING(dptr, text, textlen);

 return (t);
}
