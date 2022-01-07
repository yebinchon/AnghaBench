
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_dev; int st_ino; } ;
struct reqfile {char const* name; int consumers; int fsid; int fileid; } ;


 int STAILQ_INIT (int *) ;
 int assert (char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
addfile(const char *path, struct reqfile *reqfile)
{
 struct stat sb;

 assert(path);
 if (stat(path, &sb) != 0) {
  warn("%s", path);
  return (1);
 }
 reqfile->fileid = sb.st_ino;
 reqfile->fsid = sb.st_dev;
 reqfile->name = path;
 STAILQ_INIT(&reqfile->consumers);
 return (0);
}
