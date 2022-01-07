
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_cmd {int (* cmd ) (struct procstat*,struct kinfo_proc*) ;} ;
struct procstat {int dummy; } ;
struct kinfo_proc {int ki_pid; } ;


 int ENOMEM ;
 int asprintf (char**,char*,int ) ;
 int free (char*) ;
 int stub1 (struct procstat*,struct kinfo_proc*) ;
 int xo_close_container (char*) ;
 int xo_errc (int,int ,char*) ;
 int xo_open_container (char*) ;

__attribute__((used)) static void
procstat(const struct procstat_cmd *cmd, struct procstat *prstat,
    struct kinfo_proc *kipp)
{
 char *pidstr = ((void*)0);

 asprintf(&pidstr, "%d", kipp->ki_pid);
 if (pidstr == ((void*)0))
  xo_errc(1, ENOMEM, "Failed to allocate memory in procstat()");
 xo_open_container(pidstr);
 cmd->cmd(prstat, kipp);
 xo_close_container(pidstr);
 free(pidstr);
}
