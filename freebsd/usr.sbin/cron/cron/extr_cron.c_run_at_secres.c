
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* crontab; struct TYPE_5__* next; } ;
typedef TYPE_1__ user ;
struct TYPE_6__ {int flags; struct TYPE_6__* next; } ;
typedef TYPE_2__ entry ;
struct TYPE_7__ {TYPE_1__* head; } ;
typedef TYPE_3__ cron_db ;


 int INTERVAL ;
 int SEC_RES ;

__attribute__((used)) static int
run_at_secres(cron_db *db)
{
 user *u;
 entry *e;

 for (u = db->head; u != ((void*)0); u = u->next) {
  for (e = u->crontab; e != ((void*)0); e = e->next) {
   if ((e->flags & (SEC_RES | INTERVAL)) != 0)
    return 1;
  }
 }
 return 0;
}
