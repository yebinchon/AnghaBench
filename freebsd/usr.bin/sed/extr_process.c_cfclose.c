
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fd; struct s_command* c; TYPE_1__* s; } ;
struct s_command {int code; struct s_command* next; TYPE_2__ u; int t; } ;
struct TYPE_3__ {int wfd; int wfile; } ;


 int close (int) ;
 int err (int,char*,int ) ;

void
cfclose(struct s_command *cp, struct s_command *end)
{

 for (; cp != end; cp = cp->next)
  switch(cp->code) {
  case 's':
   if (cp->u.s->wfd != -1 && close(cp->u.s->wfd))
    err(1, "%s", cp->u.s->wfile);
   cp->u.s->wfd = -1;
   break;
  case 'w':
   if (cp->u.fd != -1 && close(cp->u.fd))
    err(1, "%s", cp->t);
   cp->u.fd = -1;
   break;
  case '{':
   cfclose(cp->u.c, cp->next);
   break;
  }
}
