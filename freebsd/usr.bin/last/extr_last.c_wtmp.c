
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct utmpx {TYPE_1__ ut_tv; } ;
struct tm {int dummy; } ;
typedef int ct ;


 int SLIST_INIT (int *) ;
 char* ctf (char*) ;
 int doentry (struct utmpx*) ;
 int endutxent () ;
 char* file ;
 int free (struct utmpx*) ;
 struct utmpx* getutxent () ;
 int idlist ;
 struct tm* localtime (scalar_t__*) ;
 int memcpy (struct utmpx*,struct utmpx*,int) ;
 struct utmpx* realloc (struct utmpx*,unsigned int) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (scalar_t__*) ;
 int xo_attr (char*,char*,unsigned long) ;
 int xo_close_container (char*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,char*) ;
 int xo_err (int,char*) ;
 int xo_open_container (char*) ;
 int xo_open_list (char*) ;

__attribute__((used)) static void
wtmp(void)
{
 struct utmpx *buf = ((void*)0);
 struct utmpx *ut;
 static unsigned int amount = 0;
 time_t t;
 char ct[80];
 struct tm *tm;

 SLIST_INIT(&idlist);
 (void)time(&t);

 xo_open_container("last-information");


 while ((ut = getutxent()) != ((void*)0)) {
  if (amount % 128 == 0) {
   buf = realloc(buf, (amount + 128) * sizeof *ut);
   if (buf == ((void*)0))
    xo_err(1, "realloc");
  }
  memcpy(&buf[amount++], ut, sizeof *ut);
  if (t > ut->ut_tv.tv_sec)
   t = ut->ut_tv.tv_sec;
 }
 endutxent();


 xo_open_list("last");
 while (amount > 0)
  doentry(&buf[--amount]);
 xo_close_list("last");
 free(buf);
 tm = localtime(&t);
 (void) strftime(ct, sizeof(ct), "%+", tm);
 xo_emit("\n{:utxdb/%s}", (file == ((void*)0)) ? "utx.log" : file);
 xo_attr("seconds", "%lu", (unsigned long) t);
 xo_emit(ctf(" begins {:begins/%s}\n"), ct);
 xo_close_container("last-information");
}
