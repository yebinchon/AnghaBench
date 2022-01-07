
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cap_rights_t ;
struct TYPE_4__ {int fd; char const* name; struct TYPE_4__* next; } ;
typedef TYPE_1__ LIST ;


 int CAP_FSTAT ;
 int CAP_WRITE ;
 int EXIT_FAILURE ;
 int STDOUT_FILENO ;
 int cap_rights_init (int *,int ,int ) ;
 int caph_limit_stdout () ;
 scalar_t__ caph_rights_limit (int,int *) ;
 int err (int,char*) ;
 TYPE_1__* head ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static void
add(int fd, const char *name)
{
 LIST *p;
 cap_rights_t rights;

 if (fd == STDOUT_FILENO) {
  if (caph_limit_stdout() == -1)
   err(EXIT_FAILURE, "unable to limit stdout");
 } else {
  cap_rights_init(&rights, CAP_WRITE, CAP_FSTAT);
  if (caph_rights_limit(fd, &rights) < 0)
   err(EXIT_FAILURE, "unable to limit rights");
 }

 if ((p = malloc(sizeof(LIST))) == ((void*)0))
  err(1, "malloc");
 p->fd = fd;
 p->name = name;
 p->next = head;
 head = p;
}
