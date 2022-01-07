
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int st_mode; } ;
struct file {int dummy; } ;


 int S_IFIFO ;
 int bzero (void*,int) ;

__attribute__((used)) static int
kqueue_stat(struct file *fp, struct stat *st, struct ucred *active_cred,
 struct thread *td)
{

 bzero((void *)st, sizeof *st);







 st->st_mode = S_IFIFO;
 return (0);
}
