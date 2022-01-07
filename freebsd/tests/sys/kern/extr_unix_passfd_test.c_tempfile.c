
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*,char*) ;
 int PATH_MAX ;
 char* getenv (char*) ;
 int mkstemp (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static void
tempfile(int *fdp)
{
 char path[PATH_MAX];
 int fd;

 snprintf(path, PATH_MAX, "%s/unix_passfd.XXXXXXXXXXXXXXX",
     getenv("TMPDIR") == ((void*)0) ? "/tmp" : getenv("TMPDIR"));
 fd = mkstemp(path);
 ATF_REQUIRE_MSG(fd != -1, "mkstemp(%s) failed", path);
 (void)unlink(path);
 *fdp = fd;
}
