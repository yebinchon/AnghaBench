
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NameUserPrincipal ;
 char* get_extended_user_info (int ) ;

char *mingw_query_user_email(void)
{
 return get_extended_user_info(NameUserPrincipal);
}
