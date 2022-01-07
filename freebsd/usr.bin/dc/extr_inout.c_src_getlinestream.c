
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stream; } ;
struct source {TYPE_1__ u; } ;


 int BUFSIZ ;
 char* bstrdup (char*) ;
 int * fgets (char*,int,int ) ;

__attribute__((used)) static char *
src_getlinestream(struct source *src)
{
 char buf[BUFSIZ];

 if (fgets(buf, BUFSIZ, src->u.stream) == ((void*)0))
  return (bstrdup(""));
 return bstrdup(buf);
}
