
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int size; } ;
typedef TYPE_1__ DBT ;


 int abort () ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
killproto(DBT *key)
{
 char *p, *d = key->data;

 if ((p = strchr(d, '/')) == ((void*)0))
  abort();
 *p++ = '\0';
 key->size = p - d;
}
