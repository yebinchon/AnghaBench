
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* crontab; struct TYPE_4__* next; } ;
typedef TYPE_1__ user ;
typedef scalar_t__ pid_t ;
struct TYPE_5__ {int flags; scalar_t__ child; int lastexit; struct TYPE_5__* next; } ;
typedef TYPE_2__ entry ;
struct TYPE_6__ {TYPE_1__* head; } ;


 int INTERVAL ;
 TYPE_3__ database ;
 int time (int *) ;

__attribute__((used)) static void
find_interval_entry(pid_t pid)
{
 user *u;
 entry *e;

 for (u = database.head; u != ((void*)0); u = u->next) {
  for (e = u->crontab; e != ((void*)0); e = e->next) {
   if ((e->flags & INTERVAL) && e->child == pid) {
    e->lastexit = time(((void*)0));
    e->child = 0;
    break;
   }
  }
 }
}
