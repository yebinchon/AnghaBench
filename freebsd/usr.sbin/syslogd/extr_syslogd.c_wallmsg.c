
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {scalar_t__ ut_type; int ut_line; int ut_user; } ;
struct iovec {int dummy; } ;
struct filed {scalar_t__ f_type; int ** fu_uname; } ;


 scalar_t__ F_WALL ;
 int MAXUNAMES ;
 int TTYMSGTIME ;
 scalar_t__ USER_PROCESS ;
 int endutxent () ;
 scalar_t__ errno ;
 struct utmpx* getutxent () ;
 int logerror (char const*) ;
 int setutxent () ;
 int strcmp (int *,int ) ;
 char* ttymsg (struct iovec*,int const,int ,int ) ;
 char* ttymsg_check (struct iovec*,int const,int ,int ) ;

__attribute__((used)) static void
wallmsg(struct filed *f, struct iovec *iov, const int iovlen)
{
 static int reenter;
 struct utmpx *ut;
 int i;
 const char *p;

 if (reenter++)
  return;
 setutxent();

 while ((ut = getutxent()) != ((void*)0)) {
  if (ut->ut_type != USER_PROCESS)
   continue;
  if (f->f_type == F_WALL) {
   if ((p = ttymsg(iov, iovlen, ut->ut_line,
       TTYMSGTIME)) != ((void*)0)) {
    errno = 0;
    logerror(p);
   }
   continue;
  }

  for (i = 0; i < MAXUNAMES; i++) {
   if (!f->fu_uname[i][0])
    break;
   if (!strcmp(f->fu_uname[i], ut->ut_user)) {
    if ((p = ttymsg_check(iov, iovlen, ut->ut_line,
        TTYMSGTIME)) != ((void*)0)) {
     errno = 0;
     logerror(p);
    }
    break;
   }
  }
 }
 endutxent();
 reenter = 0;
}
