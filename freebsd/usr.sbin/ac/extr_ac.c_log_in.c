
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx_entry {int time; int line; int id; int user; } ;
struct utmpx {char* ut_host; int ut_tv; int ut_line; int ut_id; int ut_user; } ;


 int AC_T ;
 int Console ;
 int CurUtmpx ;
 int FirstTime ;
 int Flags ;
 int SLIST_INSERT_HEAD (int *,struct utmpx_entry*,int ) ;
 int do_tty (int ) ;
 int errx (int,char*) ;
 struct utmpx_entry* malloc (int) ;
 int memcpy (int ,int ,int) ;
 int next ;
 scalar_t__ on_console () ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
log_in(struct utmpx *up)
{
 struct utmpx_entry *lp;
 if (Flags & AC_T && !do_tty(up->ut_line))
  return;




 if ((lp = malloc(sizeof(*lp))) == ((void*)0))
  errx(1, "malloc failed");
 SLIST_INSERT_HEAD(&CurUtmpx, lp, next);
 strlcpy(lp->user, up->ut_user, sizeof(lp->user));
 memcpy(lp->id, up->ut_id, sizeof(lp->id));



 lp->time = up->ut_tv;
}
