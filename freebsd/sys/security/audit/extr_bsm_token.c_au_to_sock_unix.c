
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int token_t ;
struct sockaddr_un {int sun_path; int sun_family; } ;


 int ADD_STRING (int *,int ,scalar_t__) ;
 int ADD_U_CHAR (int *,int ) ;
 int AUT_SOCKUNIX ;
 int GET_TOKEN_AREA (int *,int *,scalar_t__) ;
 scalar_t__ strlen (int ) ;

token_t *
au_to_sock_unix(struct sockaddr_un *so)
{
 token_t *t;
 u_char *dptr;

 GET_TOKEN_AREA(t, dptr, 3 * sizeof(u_char) + strlen(so->sun_path) + 1);

 ADD_U_CHAR(dptr, AUT_SOCKUNIX);

 ADD_U_CHAR(dptr, 0);
 ADD_U_CHAR(dptr, so->sun_family);
 ADD_STRING(dptr, so->sun_path, strlen(so->sun_path) + 1);

 return (t);
}
