
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* val; } ;
typedef TYPE_2__ resp_arg ;
struct TYPE_4__ {int int32; char** ptr; } ;


 int fprintf (int ,char*,char const*) ;
 char** realloc (char**,int) ;
 int stderr ;
 char* strdup (char const*) ;

__attribute__((used)) static void
saveresp(resp_arg *ra, const char *cmd, const char *resp)
{
 char **buf;
 int i = ra->val[1].int32;





 buf = realloc(ra->val[0].ptr, sizeof(char *) * (i + 1));
 if (buf == ((void*)0))
  return;

 buf[i] = strdup(resp);

 ra->val[0].ptr = buf;
 ra->val[1].int32 = i + 1;
}
