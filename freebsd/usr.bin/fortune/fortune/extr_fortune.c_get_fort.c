
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_14__ {int str_numstr; } ;
struct TYPE_12__ {unsigned int str_numstr; } ;
struct TYPE_13__ {scalar_t__ percent; int pos; int datfd; int * child; TYPE_1__ tbl; int name; struct TYPE_13__* next; } ;
typedef TYPE_2__ FILEDESC ;


 int DPRINTF (int,int ) ;
 TYPE_2__* File_list ;
 TYPE_2__* Fortfile ;
 scalar_t__ NO_PROB ;
 TYPE_9__ Noprob_tbl ;
 int SEEK_SET ;
 int * Seekpts ;
 int arc4random_uniform (int) ;
 int be64toh (int ) ;
 int get_pos (TYPE_2__*) ;
 int get_tbl (TYPE_2__*) ;
 int lseek (int ,int ,int ) ;
 int open_dat (TYPE_2__*) ;
 TYPE_2__* pick_child (TYPE_2__*) ;
 int read (int ,int *,int) ;
 int stderr ;
 int sum_noprobs (TYPE_2__*) ;

__attribute__((used)) static void
get_fort(void)
{
 FILEDESC *fp;
 int choice;

 if (File_list->next == ((void*)0) || File_list->percent == NO_PROB)
  fp = File_list;
 else {
  choice = arc4random_uniform(100);
  DPRINTF(1, (stderr, "choice = %d\n", choice));
  for (fp = File_list; fp->percent != NO_PROB; fp = fp->next)
   if (choice < fp->percent)
    break;
   else {
    choice -= fp->percent;
    DPRINTF(1, (stderr,
         "    skip \"%s\", %d%% (choice = %d)\n",
         fp->name, fp->percent, choice));
   }
   DPRINTF(1, (stderr,
        "using \"%s\", %d%% (choice = %d)\n",
        fp->name, fp->percent, choice));
 }
 if (fp->percent != NO_PROB)
  get_tbl(fp);
 else {
  if (fp->next != ((void*)0)) {
   sum_noprobs(fp);
   choice = arc4random_uniform(Noprob_tbl.str_numstr);
   DPRINTF(1, (stderr, "choice = %d (of %u) \n", choice,
        Noprob_tbl.str_numstr));
   while ((unsigned int)choice >= fp->tbl.str_numstr) {
    choice -= fp->tbl.str_numstr;
    fp = fp->next;
    DPRINTF(1, (stderr,
         "    skip \"%s\", %u (choice = %d)\n",
         fp->name, fp->tbl.str_numstr,
         choice));
   }
   DPRINTF(1, (stderr, "using \"%s\", %u\n", fp->name,
        fp->tbl.str_numstr));
  }
  get_tbl(fp);
 }
 if (fp->child != ((void*)0)) {
  DPRINTF(1, (stderr, "picking child\n"));
  fp = pick_child(fp);
 }
 Fortfile = fp;
 get_pos(fp);
 open_dat(fp);
 lseek(fp->datfd,
     (off_t) (sizeof fp->tbl + fp->pos * sizeof Seekpts[0]), SEEK_SET);
 read(fp->datfd, Seekpts, sizeof Seekpts);
 Seekpts[0] = be64toh(Seekpts[0]);
 Seekpts[1] = be64toh(Seekpts[1]);
}
