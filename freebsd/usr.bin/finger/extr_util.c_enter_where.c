
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tv_sec; } ;
struct utmpx {TYPE_1__ ut_tv; int ut_host; int ut_line; } ;
struct TYPE_6__ {int loginat; int host; int tty; int info; } ;
typedef TYPE_2__ WHERE ;
typedef int PERSON ;


 int LOGGEDIN ;
 int find_idle_and_ttywrite (TYPE_2__*) ;
 int strcpy (int ,int ) ;
 TYPE_2__* walloc (int *) ;

void
enter_where(struct utmpx *ut, PERSON *pn)
{
 WHERE *w;

 w = walloc(pn);
 w->info = LOGGEDIN;
 strcpy(w->tty, ut->ut_line);
 strcpy(w->host, ut->ut_host);
 w->loginat = ut->ut_tv.tv_sec;
 find_idle_and_ttywrite(w);
}
