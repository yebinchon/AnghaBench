
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int from; } ;
struct prompt {scalar_t__ Term; scalar_t__ fd_in; scalar_t__ fd_out; TYPE_1__ src; } ;


 int LogPHASE ;
 int close (scalar_t__) ;
 int fclose (scalar_t__) ;
 int free (struct prompt*) ;
 int log_Printf (int ,char*,int ) ;
 int log_UnRegisterPrompt (struct prompt*) ;
 int prompt_TtyOldMode (struct prompt*) ;
 scalar_t__ stdout ;

void
prompt_Destroy(struct prompt *p, int verbose)
{
  if (p) {
    if (p->Term != stdout) {
      fclose(p->Term);
      close(p->fd_in);
      if (p->fd_out != p->fd_in)
        close(p->fd_out);
      if (verbose)
        log_Printf(LogPHASE, "%s: Client connection dropped.\n", p->src.from);
    } else
      prompt_TtyOldMode(p);

    log_UnRegisterPrompt(p);
    free(p);
  }
}
