
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx_entry {int user; int time; int id; } ;
struct utmpx {scalar_t__ ut_type; int ut_tv; int ut_id; } ;
struct timeval {int dummy; } ;


 scalar_t__ BOOT_TIME ;
 int CurUtmpx ;
 scalar_t__ DEAD_PROCESS ;
 scalar_t__ SHUTDOWN_TIME ;
 struct utmpx_entry* SLIST_FIRST (int *) ;
 struct utmpx_entry* SLIST_NEXT (struct utmpx_entry*,int ) ;
 int SLIST_REMOVE_AFTER (struct utmpx_entry*,int ) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct utmpx_entry*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int next ;
 int timersub (int *,int *,struct timeval*) ;
 int update_user (int ,struct timeval) ;

__attribute__((used)) static void
log_out(const struct utmpx *up)
{
 struct utmpx_entry *lp, *lp2, *tlp;
 struct timeval secs;

 for (lp = SLIST_FIRST(&CurUtmpx), lp2 = ((void*)0); lp != ((void*)0);)
  if (up->ut_type == BOOT_TIME || up->ut_type == SHUTDOWN_TIME ||
      (up->ut_type == DEAD_PROCESS &&
      memcmp(lp->id, up->ut_id, sizeof(up->ut_id)) == 0)) {
   timersub(&up->ut_tv, &lp->time, &secs);
   update_user(lp->user, secs);



   tlp = lp;
   lp = SLIST_NEXT(lp, next);
   if (lp2 == ((void*)0))
    SLIST_REMOVE_HEAD(&CurUtmpx, next);
   else
    SLIST_REMOVE_AFTER(lp2, next);
   free(tlp);
  } else {
   lp2 = lp;
   lp = SLIST_NEXT(lp, next);
  }
}
