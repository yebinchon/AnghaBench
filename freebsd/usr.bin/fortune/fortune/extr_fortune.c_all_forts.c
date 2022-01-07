
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_children; int fd; char* path; char* name; char* datfile; char* posfile; int read_tbl; int was_pos_file; int * inf; int percent; struct TYPE_4__* parent; struct TYPE_4__* child; struct TYPE_4__* next; } ;
typedef TYPE_1__ FILEDESC ;


 int DPRINTF (int,int ) ;
 int FALSE ;
 int NO_PROB ;
 int O_RDONLY ;
 int W_OK ;
 scalar_t__ WriteToDisk ;
 scalar_t__ access (char*,int ) ;
 int is_fortfile (char*,char**,char**,int ) ;
 TYPE_1__* new_fp () ;
 int open (char*,int ) ;
 int stderr ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
all_forts(FILEDESC *fp, char *offensive)
{
 char *sp;
 FILEDESC *scene, *obscene;
 int fd;
 char *datfile, *posfile;

 if (fp->child != ((void*)0))
  return;
 if (!is_fortfile(offensive, &datfile, &posfile, FALSE))
  return;
 if ((fd = open(offensive, O_RDONLY)) < 0)
  return;
 DPRINTF(1, (stderr, "adding \"%s\" because of -a\n", offensive));
 scene = new_fp();
 obscene = new_fp();
 *scene = *fp;

 fp->num_children = 2;
 fp->child = scene;
 scene->next = obscene;
 obscene->next = ((void*)0);
 scene->child = obscene->child = ((void*)0);
 scene->parent = obscene->parent = fp;

 fp->fd = -1;
 scene->percent = obscene->percent = NO_PROB;

 obscene->fd = fd;
 obscene->inf = ((void*)0);
 obscene->path = offensive;
 if ((sp = strrchr(offensive, '/')) == ((void*)0))
  obscene->name = offensive;
 else
  obscene->name = ++sp;
 obscene->datfile = datfile;
 obscene->posfile = posfile;
 obscene->read_tbl = 0;
 if (WriteToDisk)
  obscene->was_pos_file = (access(obscene->posfile, W_OK) >= 0);
}
