
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; int was_pos_file; int pos; int posfile; } ;


 int CPERS ;
 int Fort_len ;
 TYPE_1__* Fortfile ;
 int LC_ALL ;
 int LOCK_EX ;
 int LOCK_UN ;
 scalar_t__ Long_only ;
 int MINW ;
 scalar_t__ Match ;
 scalar_t__ SLEN ;
 scalar_t__ Short_only ;
 scalar_t__ Wait ;
 int WriteToDisk ;
 int chmod (int ,int) ;
 int creat (int ,int) ;
 int display (TYPE_1__*) ;
 int exit (int) ;
 scalar_t__ find_matches () ;
 int flock (int,int ) ;
 scalar_t__ fortlen () ;
 int get_fort () ;
 int getargs (int,char**) ;
 int * getenv (char*) ;
 int getpath () ;
 int init_prob () ;
 scalar_t__ max (int,int ) ;
 int perror (int ) ;
 int setlocale (int ,char*) ;
 int sleep (unsigned int) ;
 int write (int,char*,int) ;

int
main(int argc, char *argv[])
{
 int fd;

 if (getenv("FORTUNE_SAVESTATE") != ((void*)0))
  WriteToDisk = 1;

 (void) setlocale(LC_ALL, "");

 getpath();
 getargs(argc, argv);

 if (Match)
  exit(find_matches() != 0);

 init_prob();
 do {
  get_fort();
 } while ((Short_only && fortlen() > SLEN) ||
   (Long_only && fortlen() <= SLEN));

 display(Fortfile);

 if (WriteToDisk) {
  if ((fd = creat(Fortfile->posfile, 0666)) < 0) {
   perror(Fortfile->posfile);
   exit(1);
  }





  flock(fd, LOCK_EX);
  write(fd, (char *) &Fortfile->pos, sizeof Fortfile->pos);
  if (!Fortfile->was_pos_file)
  chmod(Fortfile->path, 0666);
  flock(fd, LOCK_UN);
 }
 if (Wait) {
  if (Fort_len == 0)
   (void) fortlen();
  sleep((unsigned int) max(Fort_len / CPERS, MINW));
 }

 exit(0);
}
