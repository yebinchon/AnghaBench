
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _qs {int dummy; } ;
struct _cfg {int (* parse ) (struct _qs*,struct _cfg*,int,char**) ;char* optarg; int d; scalar_t__ arg_len; int * arg; } ;


 int ED (char*,...) ;
 int ND (char*,char*,char const*) ;
 int bzero (int *,int) ;
 int exit (int) ;
 int free (char**) ;
 char** split_arg (char const*,int*) ;
 int stub1 (struct _qs*,struct _cfg*,int,char**) ;

__attribute__((used)) static int
cmd_apply(const struct _cfg *a, const char *arg, struct _qs *q, struct _cfg *dst)
{
 int ac = 0;
 char **av;
 int i;

 if (arg == ((void*)0) || *arg == '\0')
  return 1;
 if (a == ((void*)0) || dst == ((void*)0)) {
  ED("program error - invalid arguments");
  exit(1);
 }
 av = split_arg(arg, &ac);
 if (av == ((void*)0))
  return 1;
 for (i = 0; a[i].parse; i++) {
  struct _cfg x = a[i];
  const char *errmsg = x.optarg;
  int ret;

  x.arg = ((void*)0);
  x.arg_len = 0;
  bzero(&x.d, sizeof(x.d));
  ND("apply %s to %s", av[0], errmsg);
  ret = x.parse(q, &x, ac, av);
  if (ret == 2)
   continue;
  if (ret == 1) {
   ED("invalid arguments: need '%s' have '%s'",
    errmsg, arg);
   break;
  }
  x.optarg = arg;
  *dst = x;
  return 0;
 }
 ED("arguments %s not recognised", arg);
 free(av);
 return 1;
}
