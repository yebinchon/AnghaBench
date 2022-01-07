
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct utmpx {scalar_t__ ut_type; int ut_user; } ;
struct passwd {int dummy; } ;
struct TYPE_7__ {int (* seq ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ;} ;
struct TYPE_6__ {int data; } ;
typedef int PERSON ;
typedef TYPE_1__ DBT ;


 int R_FIRST ;
 int R_NEXT ;
 scalar_t__ USER_PROCESS ;
 TYPE_2__* db ;
 int endutxent () ;
 int enter_lastlog (int *) ;
 int * enter_person (struct passwd*) ;
 int enter_where (struct utmpx*,int *) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int * find_person (int ) ;
 struct passwd* getpwnam (int ) ;
 struct utmpx* getutxent () ;
 scalar_t__ hide (struct passwd*) ;
 scalar_t__ kflag ;
 scalar_t__ lflag ;
 int memmove (int **,int ,int) ;
 int setutxent () ;
 int stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void
loginlist(void)
{
 PERSON *pn;
 DBT data, key;
 struct passwd *pw;
 struct utmpx *user;
 int r, sflag1;

 if (kflag)
  errx(1, "can't list logins without reading utmp");

 setutxent();
 while ((user = getutxent()) != ((void*)0)) {
  if (user->ut_type != USER_PROCESS)
   continue;
  if ((pn = find_person(user->ut_user)) == ((void*)0)) {
   if ((pw = getpwnam(user->ut_user)) == ((void*)0))
    continue;
   if (hide(pw))
    continue;
   pn = enter_person(pw);
  }
  enter_where(user, pn);
 }
 endutxent();
 if (db && lflag)
  for (sflag1 = R_FIRST;; sflag1 = R_NEXT) {
   PERSON *tmp;

   r = (*db->seq)(db, &key, &data, sflag1);
   if (r == -1)
    err(1, "db seq");
   if (r == 1)
    break;
   memmove(&tmp, data.data, sizeof tmp);
   enter_lastlog(tmp);
  }
}
