
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pw_gid; int pw_name; } ;


 int PRIV_END ;
 int PRIV_START ;
 int initgroups (int ,int ) ;
 TYPE_1__* pwd ;
 int setgid (int ) ;
 int warn (char*) ;

__attribute__((used)) static void
restoregrps(void)
{
 int initres, setres;

 PRIV_START;
 initres = initgroups(pwd->pw_name, pwd->pw_gid);
 setres = setgid(pwd->pw_gid);
 PRIV_END;

 if (initres < 0)
  warn("initgroups");
 if (setres < 0)
  warn("setgid");
}
