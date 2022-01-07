
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token ;


 int lasttok ;
 int pushed ;

__attribute__((used)) static void
unget_token(token *tokp)
{
 lasttok = *tokp;
 pushed = 1;
}
