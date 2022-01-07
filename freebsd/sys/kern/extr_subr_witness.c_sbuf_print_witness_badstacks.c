
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct witness_lock_order_data {scalar_t__ w_reversed; int wlod_stack; TYPE_1__* w_class; int w_name; } ;
struct witness {scalar_t__ w_reversed; int wlod_stack; TYPE_1__* w_class; int w_name; } ;
struct sbuf {int dummy; } ;
struct TYPE_4__ {int wloh_count; } ;
struct TYPE_3__ {int lc_name; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int WITNESS_REVERSAL ;
 scalar_t__ blessed (struct witness_lock_order_data*,struct witness_lock_order_data*) ;
 int free (struct witness_lock_order_data*,int ) ;
 struct witness_lock_order_data* malloc (int,int ,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int sbuf_clear (struct sbuf*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int stack_copy (int *,int *) ;
 int stack_sbuf_print (struct sbuf*,int *) ;
 int stack_zero (int *) ;
 struct witness_lock_order_data* w_data ;
 int w_generation ;
 TYPE_2__ w_lohash ;
 int w_max_used_index ;
 int w_mtx ;
 int** w_rmatrix ;
 struct witness_lock_order_data* witness_lock_order_get (struct witness_lock_order_data*,struct witness_lock_order_data*) ;

__attribute__((used)) static void
sbuf_print_witness_badstacks(struct sbuf *sb, size_t *oldidx)
{
 struct witness_lock_order_data *data1, *data2, *tmp_data1, *tmp_data2;
 struct witness *tmp_w1, *tmp_w2, *w1, *w2;
 int generation, i, j;

 tmp_data1 = ((void*)0);
 tmp_data2 = ((void*)0);
 tmp_w1 = ((void*)0);
 tmp_w2 = ((void*)0);


 tmp_w1 = malloc(sizeof(struct witness), M_TEMP, M_WAITOK | M_ZERO);
 tmp_w2 = malloc(sizeof(struct witness), M_TEMP, M_WAITOK | M_ZERO);
 tmp_data1 = malloc(sizeof(struct witness_lock_order_data), M_TEMP,
     M_WAITOK | M_ZERO);
 tmp_data2 = malloc(sizeof(struct witness_lock_order_data), M_TEMP,
     M_WAITOK | M_ZERO);
 stack_zero(&tmp_data1->wlod_stack);
 stack_zero(&tmp_data2->wlod_stack);

restart:
 mtx_lock_spin(&w_mtx);
 generation = w_generation;
 mtx_unlock_spin(&w_mtx);
 sbuf_printf(sb, "Number of known direct relationships is %d\n",
     w_lohash.wloh_count);
 for (i = 1; i < w_max_used_index; i++) {
  mtx_lock_spin(&w_mtx);
  if (generation != w_generation) {
   mtx_unlock_spin(&w_mtx);


   *oldidx = 0;
   sbuf_clear(sb);
   goto restart;
  }

  w1 = &w_data[i];
  if (w1->w_reversed == 0) {
   mtx_unlock_spin(&w_mtx);
   continue;
  }


  *tmp_w1 = *w1;
  mtx_unlock_spin(&w_mtx);

  if (tmp_w1->w_reversed == 0)
   continue;
  for (j = 1; j < w_max_used_index; j++) {
   if ((w_rmatrix[i][j] & WITNESS_REVERSAL) == 0 || i > j)
    continue;

   mtx_lock_spin(&w_mtx);
   if (generation != w_generation) {
    mtx_unlock_spin(&w_mtx);


    *oldidx = 0;
    sbuf_clear(sb);
    goto restart;
   }

   w2 = &w_data[j];
   data1 = witness_lock_order_get(w1, w2);
   data2 = witness_lock_order_get(w2, w1);





   *tmp_w2 = *w2;

   if (data1) {
    stack_zero(&tmp_data1->wlod_stack);
    stack_copy(&data1->wlod_stack,
        &tmp_data1->wlod_stack);
   }
   if (data2 && data2 != data1) {
    stack_zero(&tmp_data2->wlod_stack);
    stack_copy(&data2->wlod_stack,
        &tmp_data2->wlod_stack);
   }
   mtx_unlock_spin(&w_mtx);

   if (blessed(tmp_w1, tmp_w2))
    continue;

   sbuf_printf(sb,
     "\nLock order reversal between \"%s\"(%s) and \"%s\"(%s)!\n",
       tmp_w1->w_name, tmp_w1->w_class->lc_name,
       tmp_w2->w_name, tmp_w2->w_class->lc_name);
   if (data1) {
    sbuf_printf(sb,
   "Lock order \"%s\"(%s) -> \"%s\"(%s) first seen at:\n",
        tmp_w1->w_name, tmp_w1->w_class->lc_name,
        tmp_w2->w_name, tmp_w2->w_class->lc_name);
    stack_sbuf_print(sb, &tmp_data1->wlod_stack);
    sbuf_printf(sb, "\n");
   }
   if (data2 && data2 != data1) {
    sbuf_printf(sb,
   "Lock order \"%s\"(%s) -> \"%s\"(%s) first seen at:\n",
        tmp_w2->w_name, tmp_w2->w_class->lc_name,
        tmp_w1->w_name, tmp_w1->w_class->lc_name);
    stack_sbuf_print(sb, &tmp_data2->wlod_stack);
    sbuf_printf(sb, "\n");
   }
  }
 }
 mtx_lock_spin(&w_mtx);
 if (generation != w_generation) {
  mtx_unlock_spin(&w_mtx);





  *oldidx = 0;
  sbuf_clear(sb);
  goto restart;
 }
 mtx_unlock_spin(&w_mtx);


 free(tmp_data1, M_TEMP);
 free(tmp_data2, M_TEMP);
 free(tmp_w1, M_TEMP);
 free(tmp_w2, M_TEMP);
}
