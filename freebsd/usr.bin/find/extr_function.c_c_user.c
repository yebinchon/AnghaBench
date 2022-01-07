
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_uid; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {scalar_t__ u_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int FTS_NOSTAT ;
 scalar_t__ atoi (char*) ;
 int errx (int,char*,int ,char*) ;
 scalar_t__ find_parsenum (TYPE_1__*,int ,char*,int *) ;
 int ftsoptions ;
 struct passwd* getpwnam (char*) ;
 char* nextarg (TYPE_2__*,char***) ;
 TYPE_1__* palloc (TYPE_2__*) ;

PLAN *
c_user(OPTION *option, char ***argvp)
{
 char *username;
 PLAN *new;
 struct passwd *p;
 uid_t uid;

 username = nextarg(option, argvp);
 ftsoptions &= ~FTS_NOSTAT;

 new = palloc(option);
 p = getpwnam(username);
 if (p == ((void*)0)) {
  char* cp = username;
  if( username[0] == '-' || username[0] == '+' )
   username++;
  uid = atoi(username);
  if (uid == 0 && username[0] != '0')
   errx(1, "%s: %s: no such user", option->name, username);
  uid = find_parsenum(new, option->name, cp, ((void*)0));
 } else
  uid = p->pw_uid;

 new->u_data = uid;
 return new;
}
