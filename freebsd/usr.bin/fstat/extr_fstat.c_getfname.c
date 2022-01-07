
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_dev; int st_ino; } ;
struct TYPE_4__ {char const* name; int fsid; int ino; struct TYPE_4__* next; } ;
typedef TYPE_1__ DEVS ;


 TYPE_1__* devs ;
 int err (int,int *) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int warn (char*,char const*) ;

int
getfname(const char *filename)
{
 struct stat statbuf;
 DEVS *cur;

 if (stat(filename, &statbuf)) {
  warn("%s", filename);
  return (0);
 }
 if ((cur = malloc(sizeof(DEVS))) == ((void*)0))
  err(1, ((void*)0));
 cur->next = devs;
 devs = cur;

 cur->ino = statbuf.st_ino;
 cur->fsid = statbuf.st_dev;
 cur->name = filename;
 return (1);
}
