
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token ;


 int get_token (int *) ;
 int unget_token (int *) ;

void
peek(token *tokp)
{
 get_token(tokp);
 unget_token(tokp);
}
