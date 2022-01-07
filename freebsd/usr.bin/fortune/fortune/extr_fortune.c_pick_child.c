
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int str_numstr; } ;
struct TYPE_7__ {unsigned int num_children; TYPE_1__ tbl; int name; struct TYPE_7__* next; struct TYPE_7__* child; } ;
typedef TYPE_2__ FILEDESC ;


 int DPRINTF (int,int ) ;
 scalar_t__ Equal_probs ;
 int arc4random_uniform (unsigned int) ;
 int get_tbl (TYPE_2__*) ;
 int stderr ;

__attribute__((used)) static FILEDESC *
pick_child(FILEDESC *parent)
{
 FILEDESC *fp;
 int choice;

 if (Equal_probs) {
  choice = arc4random_uniform(parent->num_children);
  DPRINTF(1, (stderr, "    choice = %d (of %d)\n",
       choice, parent->num_children));
  for (fp = parent->child; choice--; fp = fp->next)
   continue;
  DPRINTF(1, (stderr, "    using %s\n", fp->name));
  return (fp);
 }
 else {
  get_tbl(parent);
  choice = arc4random_uniform(parent->tbl.str_numstr);
  DPRINTF(1, (stderr, "    choice = %d (of %u)\n",
       choice, parent->tbl.str_numstr));
  for (fp = parent->child; (unsigned)choice >= fp->tbl.str_numstr;
       fp = fp->next) {
   choice -= fp->tbl.str_numstr;
   DPRINTF(1, (stderr, "\tskip %s, %u (choice = %d)\n",
        fp->name, fp->tbl.str_numstr, choice));
  }
  DPRINTF(1, (stderr, "    using %s, %u\n", fp->name,
       fp->tbl.str_numstr));
  return (fp);
 }
}
