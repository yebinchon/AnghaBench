
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pro {char* p_name; int p_type; int p_special; int* p_obj; } ;
struct TYPE_2__ {int case_indent; } ;




 char* INDENT_VERSION ;


 int OFF ;





 int add_typedefs_from_file (char const*) ;
 int add_typename (char const*) ;
 int atof (char const*) ;
 int atoi (char const*) ;
 char* eqin (char*,char*) ;
 int errx (int,char*,int,...) ;
 int exit (int ) ;
 int * input ;
 int isdigit (unsigned char) ;
 TYPE_1__ opt ;
 int option_source ;
 int * output ;
 int printf (char*,char*) ;
 struct pro* pro ;
 int * stdin ;
 int * stdout ;

void
set_option(char *arg)
{
    struct pro *p;
    const char *param_start;

    arg++;
    for (p = pro; p->p_name; p++)
 if (*p->p_name == *arg && (param_start = eqin(p->p_name, arg)) != ((void*)0))
     goto found;
    errx(1, "%s: unknown parameter \"%s\"", option_source, arg - 1);
found:
    switch (p->p_type) {

    case 130:
 switch (p->p_special) {

 case 135:
     break;

 case 136:
     if (*param_start == 0)
  goto need_param;
     opt.case_indent = atof(param_start);
     break;

 case 129:
     if (input == ((void*)0))
  input = stdin;
     if (output == ((void*)0))
  output = stdout;
     break;

 case 134:
     if (*param_start == 0)
  goto need_param;
     add_typename(param_start);
     break;

 case 133:
     if (*param_start == 0)
  goto need_param;
     add_typedefs_from_file(param_start);
     break;

 case 128:
     printf("FreeBSD indent %s\n", INDENT_VERSION);
     exit(0);

 default:
     errx(1, "set_option: internal error: p_special %d", p->p_special);
 }
 break;

    case 132:
 if (p->p_special == OFF)
     *p->p_obj = 0;
 else
     *p->p_obj = 1;
 break;

    case 131:
 if (!isdigit((unsigned char)*param_start)) {
    need_param:
     errx(1, "%s: ``%s'' requires a parameter", option_source, p->p_name);
 }
 *p->p_obj = atoi(param_start);
 break;

    default:
 errx(1, "set_option: internal error: p_type %d", p->p_type);
    }
}
