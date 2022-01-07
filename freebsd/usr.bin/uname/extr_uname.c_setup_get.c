
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_ENV (char*,int ) ;
 int arch ;
 int buildid ;
 int hostname ;
 int ident ;
 int kernvers ;
 int platform ;
 int release ;
 int sysname ;
 int uservers ;
 int version ;

__attribute__((used)) static void
setup_get(void)
{
 CHECK_ENV("s", sysname);
 CHECK_ENV("n", hostname);
 CHECK_ENV("r", release);
 CHECK_ENV("v", version);
 CHECK_ENV("m", platform);
 CHECK_ENV("p", arch);
 CHECK_ENV("i", ident);
 CHECK_ENV("K", kernvers);
 CHECK_ENV("U", uservers);
 CHECK_ENV("b", buildid);
}
