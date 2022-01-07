
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct child_process {int dummy; } ;


 int pipe_command (struct child_process*,int *,int ,struct strbuf*,size_t,int *,int ) ;

__attribute__((used)) static inline int capture_command(struct child_process *cmd,
      struct strbuf *out,
      size_t hint)
{
 return pipe_command(cmd, ((void*)0), 0, out, hint, ((void*)0), 0);
}
