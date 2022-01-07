
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct utmpx {int ut_host; int ut_line; int ut_user; int ut_id; int ut_tv; int ut_type; } ;
struct TYPE_4__ {char const* base; } ;
struct physical {scalar_t__ type; int Utmp; TYPE_2__ name; TYPE_1__* handler; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int ID0login (struct utmpx*) ;
 scalar_t__ PHYS_DIRECT ;
 scalar_t__ TCP_DEVICE ;
 scalar_t__ UDP_DEVICE ;
 int USER_PROCESS ;
 char* getenv (char*) ;
 scalar_t__ getpid () ;
 int gettimeofday (int *,int *) ;
 char* memchr (int ,char,int) ;
 int memset (struct utmpx*,int ,int) ;
 int snprintf (int ,int,char*,int) ;
 int strncpy (int ,char const*,int) ;

void
physical_Login(struct physical *p, const char *name)
{
  if (p->type == PHYS_DIRECT && *p->name.base && !p->Utmp) {
    struct utmpx ut;
    const char *connstr;
    char *colon;

    memset(&ut, 0, sizeof ut);
    ut.ut_type = USER_PROCESS;
    gettimeofday(&ut.ut_tv, ((void*)0));
    snprintf(ut.ut_id, sizeof ut.ut_id, "%xppp", (int)getpid());
    strncpy(ut.ut_user, name, sizeof ut.ut_user);
    if (p->handler && (p->handler->type == TCP_DEVICE ||
                       p->handler->type == UDP_DEVICE)) {
      strncpy(ut.ut_host, p->name.base, sizeof ut.ut_host);
      colon = memchr(ut.ut_host, ':', sizeof ut.ut_host);
      if (colon)
        *colon = '\0';
    } else
      strncpy(ut.ut_line, p->name.base, sizeof ut.ut_line);
    if ((connstr = getenv("CONNECT")))

      strncpy(ut.ut_host, connstr, sizeof ut.ut_host);
    ID0login(&ut);
    p->Utmp = 1;
  }
}
