
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dirent {scalar_t__ d_namlen; int d_name; } ;
struct TYPE_5__ {int fd; char* path; scalar_t__ num_children; int child; } ;
typedef TYPE_1__ FILEDESC ;
typedef int DIR ;


 int DPRINTF (int,int ) ;
 int FALSE ;
 int NO_PROB ;
 int TRUE ;
 scalar_t__ add_file (int ,char*,char*,int *,TYPE_1__**,TYPE_1__*) ;
 int close (int) ;
 char* copy (int ,scalar_t__) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int * opendir (char*) ;
 int perror (char*) ;
 struct dirent* readdir (int *) ;
 int stderr ;

__attribute__((used)) static int
add_dir(FILEDESC *fp)
{
 DIR *dir;
 struct dirent *dirent;
 FILEDESC *tailp;
 char *name;

 (void) close(fp->fd);
 fp->fd = -1;
 if ((dir = opendir(fp->path)) == ((void*)0)) {
  perror(fp->path);
  return (FALSE);
 }
 tailp = ((void*)0);
 DPRINTF(1, (stderr, "adding dir \"%s\"\n", fp->path));
 fp->num_children = 0;
 while ((dirent = readdir(dir)) != ((void*)0)) {
  if (dirent->d_namlen == 0)
   continue;
  name = copy(dirent->d_name, dirent->d_namlen);
  if (add_file(NO_PROB, name, fp->path, &fp->child, &tailp, fp))
   fp->num_children++;
  else
   free(name);
 }
 if (fp->num_children == 0) {
  (void) fprintf(stderr,
      "fortune: %s: No fortune files in directory.\n", fp->path);
  return (FALSE);
 }

 return (TRUE);
}
