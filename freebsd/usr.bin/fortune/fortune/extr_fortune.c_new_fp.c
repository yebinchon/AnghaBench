
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int datfd; int fd; int * posfile; int * datfile; int * parent; int * child; int * prev; int * next; int read_tbl; int percent; int * inf; int pos; } ;
typedef TYPE_1__ FILEDESC ;


 int FALSE ;
 int NO_PROB ;
 int POS_UNKNOWN ;
 TYPE_1__* do_malloc (int) ;

__attribute__((used)) static FILEDESC *
new_fp(void)
{
 FILEDESC *fp;

 fp = do_malloc(sizeof(*fp));
 fp->datfd = -1;
 fp->pos = POS_UNKNOWN;
 fp->inf = ((void*)0);
 fp->fd = -1;
 fp->percent = NO_PROB;
 fp->read_tbl = FALSE;
 fp->next = ((void*)0);
 fp->prev = ((void*)0);
 fp->child = ((void*)0);
 fp->parent = ((void*)0);
 fp->datfile = ((void*)0);
 fp->posfile = ((void*)0);

 return (fp);
}
