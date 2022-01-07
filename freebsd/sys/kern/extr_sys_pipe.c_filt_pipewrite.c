
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; scalar_t__ cnt; } ;
struct pipe {scalar_t__ pipe_present; int pipe_state; TYPE_1__ pipe_buffer; } ;
struct knote {scalar_t__ kn_data; int kn_flags; struct pipe* kn_hook; } ;


 int EV_EOF ;
 int MA_OWNED ;
 scalar_t__ PIPE_ACTIVE ;
 scalar_t__ PIPE_BUF ;
 int PIPE_DIRECTW ;
 int PIPE_EOF ;
 int PIPE_LOCK_ASSERT (struct pipe*,int ) ;

__attribute__((used)) static int
filt_pipewrite(struct knote *kn, long hint)
{
 struct pipe *wpipe;





 wpipe = kn->kn_hook;
 if (wpipe->pipe_present != PIPE_ACTIVE ||
     (wpipe->pipe_state & PIPE_EOF)) {
  kn->kn_data = 0;
  kn->kn_flags |= EV_EOF;
  return (1);
 }
 PIPE_LOCK_ASSERT(wpipe, MA_OWNED);
 kn->kn_data = (wpipe->pipe_buffer.size > 0) ?
     (wpipe->pipe_buffer.size - wpipe->pipe_buffer.cnt) : PIPE_BUF;
 if (wpipe->pipe_state & PIPE_DIRECTW)
  kn->kn_data = 0;

 return (kn->kn_data >= PIPE_BUF);
}
