
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* passwd; } ;
struct server {TYPE_2__ cfg; } ;
struct TYPE_6__ {char* type; char* from; } ;
struct TYPE_4__ {int Write; int Read; int IsSet; int UpdateSet; int type; } ;
struct prompt {int fd_in; int fd_out; int nonewline; int needprompt; struct bundle* bundle; scalar_t__ readtilde; int * TermMode; TYPE_3__ src; void* auth; struct server* owner; int Term; int oldtio; TYPE_1__ desc; } ;
struct bundle {int dummy; } ;


 void* LOCAL_AUTH ;
 void* LOCAL_NO_AUTH ;
 int PROMPT_DESCRIPTOR ;
 int PROMPT_STD ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int fdopen (int,char*) ;
 int free (struct prompt*) ;
 int log_RegisterPrompt (struct prompt*) ;
 scalar_t__ malloc (int) ;
 int prompt_IsSet ;
 int prompt_Read ;
 int prompt_UpdateSet ;
 int prompt_Write ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int tcgetattr (int,int *) ;
 char* ttyname (int) ;

struct prompt *
prompt_Create(struct server *s, struct bundle *bundle, int fd)
{
  struct prompt *p = (struct prompt *)malloc(sizeof(struct prompt));

  if (p != ((void*)0)) {
    p->desc.type = PROMPT_DESCRIPTOR;
    p->desc.UpdateSet = prompt_UpdateSet;
    p->desc.IsSet = prompt_IsSet;
    p->desc.Read = prompt_Read;
    p->desc.Write = prompt_Write;

    if (fd == PROMPT_STD) {
      char *tty = ttyname(STDIN_FILENO);

      if (!tty) {
        free(p);
        return ((void*)0);
      }
      p->fd_in = STDIN_FILENO;
      p->fd_out = STDOUT_FILENO;
      p->Term = stdout;
      p->owner = ((void*)0);
      p->auth = LOCAL_AUTH;
      p->src.type = "Controller";
      strncpy(p->src.from, tty, sizeof p->src.from - 1);
      p->src.from[sizeof p->src.from - 1] = '\0';
      tcgetattr(p->fd_in, &p->oldtio);
    } else {
      p->fd_in = p->fd_out = fd;
      p->Term = fdopen(fd, "a+");
      p->owner = s;
      p->auth = *s->cfg.passwd ? LOCAL_NO_AUTH : LOCAL_AUTH;
      p->src.type = "unknown";
      *p->src.from = '\0';
    }
    p->TermMode = ((void*)0);
    p->nonewline = 1;
    p->needprompt = 1;
    p->readtilde = 0;
    p->bundle = bundle;
    log_RegisterPrompt(p);
  }

  return p;
}
