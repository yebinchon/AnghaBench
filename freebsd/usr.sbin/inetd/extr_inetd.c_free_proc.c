
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procinfo {int dummy; } ;


 int LIST_REMOVE (struct procinfo*,int ) ;
 int free (struct procinfo*) ;
 int pr_link ;

__attribute__((used)) static void
free_proc(struct procinfo *proc)
{
 if (proc == ((void*)0))
  return;
 LIST_REMOVE(proc, pr_link);
 free(proc);
}
