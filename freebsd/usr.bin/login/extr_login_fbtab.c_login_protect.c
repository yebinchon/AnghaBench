
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_4__ {unsigned int gl_pathc; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int gid_t ;


 scalar_t__ ENOENT ;
 scalar_t__ EOPNOTSUPP ;
 int GLOB_NOSORT ;
 int LOG_ERR ;
 scalar_t__ chflags (char*,int ) ;
 scalar_t__ chmod (char*,int) ;
 scalar_t__ chown (char*,int ,int ) ;
 scalar_t__ errno ;
 scalar_t__ glob (char*,int ,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int syslog (int ,char*,char const*,char*) ;

__attribute__((used)) static void
login_protect(const char *table, char *pattern, int mask, uid_t uid, gid_t gid)
{
    glob_t gl;
    char *path;
    unsigned int i;

    if (glob(pattern, GLOB_NOSORT, ((void*)0), &gl) != 0)
 return;
    for (i = 0; i < gl.gl_pathc; i++) {
 path = gl.gl_pathv[i];

 if (chflags(path, 0) && errno != ENOENT && errno != EOPNOTSUPP)
     syslog(LOG_ERR, "%s: chflags(%s): %m", table, path);
 if (chmod(path, mask) && errno != ENOENT)
     syslog(LOG_ERR, "%s: chmod(%s): %m", table, path);
 if (chown(path, uid, gid) && errno != ENOENT)
     syslog(LOG_ERR, "%s: chown(%s): %m", table, path);
    }
    globfree(&gl);
}
