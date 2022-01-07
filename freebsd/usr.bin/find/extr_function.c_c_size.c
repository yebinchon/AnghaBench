
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int o_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int FTS_NOSTAT ;
 int QUAD_MAX ;
 scalar_t__ divsize ;
 int errx (int,char*,int ,char*) ;
 int find_parsenum (TYPE_1__*,int ,char*,char*) ;
 int ftsoptions ;
 char* nextarg (TYPE_2__*,char***) ;
 TYPE_1__* palloc (TYPE_2__*) ;

PLAN *
c_size(OPTION *option, char ***argvp)
{
 char *size_str;
 PLAN *new;
 char endch;
 off_t scale;

 size_str = nextarg(option, argvp);
 ftsoptions &= ~FTS_NOSTAT;

 new = palloc(option);
 endch = 'c';
 new->o_data = find_parsenum(new, option->name, size_str, &endch);
 if (endch != '\0') {
  divsize = 0;

  switch (endch) {
  case 'c':
   scale = 0x1LL;
   break;
  case 'k':
   scale = 0x400LL;
   break;
  case 'M':
   scale = 0x100000LL;
   break;
  case 'G':
   scale = 0x40000000LL;
   break;
  case 'T':
   scale = 0x10000000000LL;
   break;
  case 'P':
   scale = 0x4000000000000LL;
   break;
  default:
   errx(1, "%s: %s: illegal trailing character",
    option->name, size_str);
   break;
  }
  if (new->o_data > QUAD_MAX / scale)
   errx(1, "%s: %s: value too large",
    option->name, size_str);
  new->o_data *= scale;
 }
 return new;
}
