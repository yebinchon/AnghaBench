
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {scalar_t__ pw_uid; } ;


 scalar_t__ EPERM ;
 int MAP_ANON ;
 char* MAP_FAILED ;
 int NOBODY ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 scalar_t__ geteuid () ;
 int getpagesize () ;
 struct passwd* getpwnam (int ) ;
 scalar_t__ mlock (char*,int) ;
 char* mmap (int *,int,int,int ,int,int ) ;
 scalar_t__ munlock (char*,int) ;
 scalar_t__ seteuid (scalar_t__) ;
 int strerror (scalar_t__) ;

int
main(int argc, char *argv[])
{
 struct passwd *pwd;
 int pagesize;
 char *page;

 if (geteuid() != 0)
  errx(-1, "mlock must run as root");

 errno = 0;
 pwd = getpwnam(NOBODY);
 if (pwd == ((void*)0) && errno == 0)
  errx(-1, "getpwnam: user \"%s\" not found", NOBODY);
 if (pwd == ((void*)0))
  errx(-1, "getpwnam: %s", strerror(errno));
 if (pwd->pw_uid == 0)
  errx(-1, "getpwnam: user \"%s\" has uid 0", NOBODY);

 pagesize = getpagesize();
 page = mmap(((void*)0), pagesize, PROT_READ|PROT_WRITE, MAP_ANON, -1, 0);
 if (page == MAP_FAILED)
  errx(-1, "mmap: %s", strerror(errno));

 if (mlock(page, pagesize) < 0)
  errx(-1, "mlock privileged: %s", strerror(errno));

 if (munlock(page, pagesize) < 0)
  errx(-1, "munlock privileged: %s", strerror(errno));

 if (seteuid(pwd->pw_uid) < 0)
  errx(-1, "seteuid: %s", strerror(errno));

 if (mlock(page, pagesize) == 0)
  errx(-1, "mlock unprivileged: succeeded but shouldn't have");
 if (errno != EPERM)
  errx(-1, "mlock unprivileged: %s", strerror(errno));

 if (munlock(page, pagesize) == 0)
  errx(-1, "munlock unprivileged: succeeded but shouldn't have");
 if (errno != EPERM)
  errx(-1, "munlock unprivileged: %s", strerror(errno));

 return (0);
}
