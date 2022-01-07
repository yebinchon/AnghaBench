
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trussinfo {int * curthread; } ;
struct procinfo {int threadlist; } ;
typedef int pid_t ;


 int * LIST_FIRST (int *) ;
 int * LIST_NEXT (int *,int ) ;
 int assert (int ) ;
 int entries ;
 struct procinfo* find_proc (struct trussinfo*,int ) ;

__attribute__((used)) static void
find_exit_thread(struct trussinfo *info, pid_t pid)
{
 struct procinfo *p;

 p = find_proc(info, pid);
 assert(p != ((void*)0));

 info->curthread = LIST_FIRST(&p->threadlist);
 assert(info->curthread != ((void*)0));
 assert(LIST_NEXT(info->curthread, entries) == ((void*)0));
}
