
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; int fd; int * inf; } ;
typedef TYPE_1__ FILEDESC ;


 int exit (int) ;
 int * fdopen (int ,char*) ;
 int perror (int ) ;

__attribute__((used)) static void
open_fp(FILEDESC *fp)
{
 if (fp->inf == ((void*)0) && (fp->inf = fdopen(fp->fd, "r")) == ((void*)0)) {
  perror(fp->path);
  exit(1);
 }
}
