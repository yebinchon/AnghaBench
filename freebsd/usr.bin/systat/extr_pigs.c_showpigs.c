
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct p_times {int dummy; } ;
typedef int pidname ;
struct TYPE_5__ {double pt_pctcpu; TYPE_1__* pt_kp; } ;
struct TYPE_4__ {char* ki_comm; int ki_uid; } ;


 int compar ;
 int getmaxy (int ) ;
 int mvwaddstr (int ,int,int,char const*) ;
 int nproc ;
 TYPE_2__* pt ;
 int qsort (TYPE_2__*,int,int,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 char* user_from_uid (int ,int ) ;
 int waddch (int ,char) ;
 int wclrtobot (int ) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int,int) ;
 int wnd ;

void
showpigs(void)
{
 int i, j, y, k;
 const char *uname, *pname;
 char pidname[30];

 if (pt == ((void*)0))
  return;

 qsort(pt, nproc, sizeof (struct p_times), compar);
 y = 1;
 i = nproc;
 if (i > getmaxy(wnd)-2)
  i = getmaxy(wnd)-2;
 for (k = 0; i > 0 && pt[k].pt_pctcpu > 0.01; i--, y++, k++) {
  uname = user_from_uid(pt[k].pt_kp->ki_uid, 0);
  pname = pt[k].pt_kp->ki_comm;
  wmove(wnd, y, 0);
  wclrtoeol(wnd);
  mvwaddstr(wnd, y, 0, uname);
  snprintf(pidname, sizeof(pidname), "%10.10s", pname);
  mvwaddstr(wnd, y, 9, pidname);
  wmove(wnd, y, 20);
  for (j = pt[k].pt_pctcpu * 50 + 0.5; j > 0; j--)
   waddch(wnd, 'X');
 }
 wmove(wnd, y, 0); wclrtobot(wnd);
}
