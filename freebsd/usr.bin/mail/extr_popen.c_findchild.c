
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child {scalar_t__ pid; struct child* link; scalar_t__ free; scalar_t__ done; } ;
typedef scalar_t__ pid_t ;


 struct child* child ;
 struct child* child_freelist ;
 int err (int,char*) ;
 struct child* malloc (int) ;

__attribute__((used)) static struct child *
findchild(pid_t pid, int dont_alloc)
{
 struct child **cpp;

 for (cpp = &child; *cpp != ((void*)0) && (*cpp)->pid != pid;
     cpp = &(*cpp)->link)
   ;
 if (*cpp == ((void*)0)) {
  if (dont_alloc)
   return(((void*)0));
  if (child_freelist) {
   *cpp = child_freelist;
   child_freelist = (*cpp)->link;
  } else {
   *cpp = malloc(sizeof(struct child));
   if (*cpp == ((void*)0))
    err(1, "malloc");
  }
  (*cpp)->pid = pid;
  (*cpp)->done = (*cpp)->free = 0;
  (*cpp)->link = ((void*)0);
 }
 return (*cpp);
}
