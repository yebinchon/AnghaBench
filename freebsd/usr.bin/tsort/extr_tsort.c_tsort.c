
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int n_name; } ;
struct TYPE_7__ {scalar_t__ n_refcnt; int n_flags; struct TYPE_7__* n_next; } ;
typedef TYPE_1__ NODE ;


 int NF_ACYCLIC ;
 int clear_cycle () ;
 int * cycle_buf ;
 int err (int,int *) ;
 int errx (int,char*) ;
 int find_cycle (TYPE_1__*,TYPE_1__*,int ,int ) ;
 TYPE_1__* graph ;
 TYPE_3__** longest_cycle ;
 void* malloc (int) ;
 int quiet ;
 int remove_node (TYPE_1__*) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
tsort(void)
{
 NODE *n, *next;
 int cnt, i;

 while (graph != ((void*)0)) {





  do {
   for (cnt = 0, n = graph; n != ((void*)0); n = next) {
    next = n->n_next;
    if (n->n_refcnt == 0) {
     remove_node(n);
     ++cnt;
    }
   }
  } while (graph != ((void*)0) && cnt);

  if (graph == ((void*)0))
   break;

  if (!cycle_buf) {





   for (cnt = 0, n = graph; n != ((void*)0); n = n->n_next)
    ++cnt;
   cycle_buf = malloc(sizeof(NODE *) * cnt);
   longest_cycle = malloc(sizeof(NODE *) * cnt);
   if (cycle_buf == ((void*)0) || longest_cycle == ((void*)0))
    err(1, ((void*)0));
  }
  for (n = graph; n != ((void*)0); n = n->n_next)
   if (!(n->n_flags & NF_ACYCLIC)) {
    if ((cnt = find_cycle(n, n, 0, 0))) {
     if (!quiet) {
      warnx("cycle in data");
      for (i = 0; i < cnt; i++)
       warnx("%s",
           longest_cycle[i]->n_name);
     }
     remove_node(n);
     clear_cycle();
     break;
    } else {

     n->n_flags |= NF_ACYCLIC;
     clear_cycle();
    }
   }

  if (n == ((void*)0))
   errx(1, "internal error -- could not find cycle");
 }
}
