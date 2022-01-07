
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct witness {int w_index; int w_num_ancestors; int w_num_descendants; } ;
struct TYPE_2__ {int w_num_ancestors; int w_num_descendants; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int WITNESS_ANCESTOR ;
 int WITNESS_ANCESTOR_MASK ;
 int WITNESS_CHILD ;
 int WITNESS_DESCENDANT ;
 int WITNESS_DESCENDANT_MASK ;
 int WITNESS_INDEX_ASSERT (int) ;
 int WITNESS_PARENT ;
 scalar_t__ isitmychild (struct witness*,struct witness*) ;
 int kdb_backtrace () ;
 int mtx_assert (int *,int ) ;
 int printf (char*,...) ;
 TYPE_1__* w_data ;
 int w_max_used_index ;
 int w_mtx ;
 int** w_rmatrix ;
 scalar_t__ witness_cold ;
 int witness_increment_graph_generation () ;
 int witness_watch ;

__attribute__((used)) static void
adopt(struct witness *parent, struct witness *child)
{
 int pi, ci, i, j;

 if (witness_cold == 0)
  mtx_assert(&w_mtx, MA_OWNED);


 if (isitmychild(parent, child))
  return;


 witness_increment_graph_generation();





 pi = parent->w_index;
 ci = child->w_index;
 WITNESS_INDEX_ASSERT(pi);
 WITNESS_INDEX_ASSERT(ci);
 MPASS(pi != ci);
 w_rmatrix[pi][ci] |= WITNESS_PARENT;
 w_rmatrix[ci][pi] |= WITNESS_CHILD;





 if ((w_rmatrix[pi][ci] & WITNESS_ANCESTOR) == 0) {
  parent->w_num_descendants++;
  child->w_num_ancestors++;
 }





 for (i = 1; i <= w_max_used_index; i++) {
  if ((w_rmatrix[i][pi] & WITNESS_ANCESTOR_MASK) == 0 &&
      (i != pi))
   continue;


  for (j = 1; j <= w_max_used_index; j++) {





   if (w_rmatrix[i][j] & WITNESS_ANCESTOR_MASK)
    continue;





   if ((w_rmatrix[ci][j] & WITNESS_ANCESTOR_MASK) == 0 &&
       (j != ci))
    continue;
   w_rmatrix[i][j] |= WITNESS_ANCESTOR;
   w_rmatrix[j][i] |= WITNESS_DESCENDANT;
   w_data[i].w_num_descendants++;
   w_data[j].w_num_ancestors++;






   if ((w_rmatrix[i][j] & WITNESS_ANCESTOR_MASK) &&
       (w_rmatrix[i][j] & WITNESS_DESCENDANT_MASK)) {
    printf("witness rmatrix paradox! [%d][%d]=%d "
        "both ancestor and descendant\n",
        i, j, w_rmatrix[i][j]);
    kdb_backtrace();
    printf("Witness disabled.\n");
    witness_watch = -1;
   }
   if ((w_rmatrix[j][i] & WITNESS_ANCESTOR_MASK) &&
       (w_rmatrix[j][i] & WITNESS_DESCENDANT_MASK)) {
    printf("witness rmatrix paradox! [%d][%d]=%d "
        "both ancestor and descendant\n",
        j, i, w_rmatrix[j][i]);
    kdb_backtrace();
    printf("Witness disabled.\n");
    witness_watch = -1;
   }
  }
 }
}
