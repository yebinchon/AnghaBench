
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct utmpx {scalar_t__ ut_type; TYPE_1__ ut_tv; int ut_host; int ut_line; } ;
struct TYPE_8__ {scalar_t__ info; scalar_t__ loginat; int host; int tty; struct TYPE_8__* next; } ;
typedef TYPE_2__ WHERE ;
struct TYPE_9__ {TYPE_2__* whead; int name; } ;
typedef TYPE_3__ PERSON ;


 scalar_t__ LASTLOG ;
 scalar_t__ LOGGEDIN ;
 scalar_t__ USER_PROCESS ;
 int UTXDB_LASTLOGIN ;
 int endutxent () ;
 struct utmpx* getutxuser (int ) ;
 scalar_t__ setutxdb (int ,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int strcpy (int ,int ) ;
 TYPE_2__* walloc (TYPE_3__*) ;

void
enter_lastlog(PERSON *pn)
{
 WHERE *w;
 struct utmpx *ut = ((void*)0);
 char doit = 0;

 if (setutxdb(UTXDB_LASTLOGIN, ((void*)0)) == 0)
  ut = getutxuser(pn->name);
 if ((w = pn->whead) == ((void*)0))
  doit = 1;
 else if (ut != ((void*)0) && ut->ut_type == USER_PROCESS) {

  for (; !doit && w != ((void*)0); w = w->next)
   if (w->info == LOGGEDIN &&
       w->loginat < ut->ut_tv.tv_sec)
    doit = 1;





  for (w = pn->whead; doit && w != ((void*)0); w = w->next)
   if (w->info == LOGGEDIN &&
       strcmp(w->tty, ut->ut_line) == 0)
    doit = 0;
 }
 if (ut != ((void*)0) && doit) {
  w = walloc(pn);
  w->info = LASTLOG;
  strcpy(w->tty, ut->ut_line);
  strcpy(w->host, ut->ut_host);
  w->loginat = ut->ut_tv.tv_sec;
 }
 endutxent();
}
