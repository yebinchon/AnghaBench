
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ datfd; int datfile; } ;
typedef TYPE_1__ FILEDESC ;


 int O_RDONLY ;
 int exit (int) ;
 scalar_t__ open (int ,int ) ;
 int perror (int ) ;

__attribute__((used)) static void
open_dat(FILEDESC *fp)
{
 if (fp->datfd < 0 && (fp->datfd = open(fp->datfile, O_RDONLY)) < 0) {
  perror(fp->datfile);
  exit(1);
 }
}
