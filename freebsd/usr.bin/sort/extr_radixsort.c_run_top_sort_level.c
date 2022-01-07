
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sort_list_item {int dummy; } ;
struct sort_level {size_t start_position; int sln; size_t tosort_num; int leaves_num; size_t tosort; size_t sorted; int leaves; struct sort_level** sublevels; } ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_8__ {int rflag; } ;
struct TYPE_5__ {int rflag; } ;
struct TYPE_7__ {TYPE_1__ sm; } ;
struct TYPE_6__ {scalar_t__ complex_sort; scalar_t__ sflag; scalar_t__ kflag; } ;


 int DEFAULT_SORT_FUNC_RADIXSORT (int ,int,int,int (*) (void const*,void const*)) ;
 scalar_t__ EAGAIN ;
 int PTHREAD_DETACHED ;
 TYPE_4__* default_sort_mods ;
 int err (int,int *) ;
 scalar_t__ errno ;
 TYPE_3__* keys ;
 int keys_num ;
 scalar_t__ list_coll ;
 scalar_t__ list_coll_by_str_only ;
 int memcpy (size_t,int ,int) ;
 int memset (struct sort_level**,int ,int ) ;
 int mergesort (int ,int,int,int (*) (void const*,void const*)) ;
 int mtsem ;
 int nthreads ;
 int place_item (struct sort_level*,size_t) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_yield () ;
 int push_ls (struct sort_level*) ;
 int reverse_sort ;
 int run_sort_cycle_st () ;
 int sem_wait (int *) ;
 int slsz ;
 int sort_left_dec (int) ;
 struct sort_level** sort_malloc (int ) ;
 TYPE_2__ sort_opts_vals ;
 int sort_thread ;

__attribute__((used)) static void
run_top_sort_level(struct sort_level *sl)
{
 struct sort_level *slc;

 reverse_sort = sort_opts_vals.kflag ? keys[0].sm.rflag :
     default_sort_mods->rflag;

 sl->start_position = 0;
 sl->sln = 256;
 sl->sublevels = sort_malloc(slsz);
 memset(sl->sublevels, 0, slsz);

 for (size_t i = 0; i < sl->tosort_num; ++i)
  place_item(sl, i);

 if (sl->leaves_num > 1) {
  if (keys_num > 1) {
   if (sort_opts_vals.sflag) {
    mergesort(sl->leaves, sl->leaves_num,
        sizeof(struct sort_list_item *),
        (int(*)(const void *, const void *)) list_coll);
   } else {
    DEFAULT_SORT_FUNC_RADIXSORT(sl->leaves, sl->leaves_num,
        sizeof(struct sort_list_item *),
        (int(*)(const void *, const void *)) list_coll);
   }
  } else if (!sort_opts_vals.sflag && sort_opts_vals.complex_sort) {
   DEFAULT_SORT_FUNC_RADIXSORT(sl->leaves, sl->leaves_num,
       sizeof(struct sort_list_item *),
       (int(*)(const void *, const void *)) list_coll_by_str_only);
  }
 }

 if (!reverse_sort) {
  memcpy(sl->tosort + sl->start_position, sl->leaves,
      sl->leaves_num * sizeof(struct sort_list_item*));
  sl->start_position += sl->leaves_num;
  sort_left_dec(sl->leaves_num);

  for (size_t i = 0; i < sl->sln; ++i) {
   slc = sl->sublevels[i];

   if (slc) {
    slc->sorted = sl->tosort;
    slc->start_position = sl->start_position;
    sl->start_position += slc->tosort_num;
    push_ls(slc);
    sl->sublevels[i] = ((void*)0);
   }
  }

 } else {
  size_t n;

  for (size_t i = 0; i < sl->sln; ++i) {

   n = sl->sln - i - 1;
   slc = sl->sublevels[n];

   if (slc) {
    slc->sorted = sl->tosort;
    slc->start_position = sl->start_position;
    sl->start_position += slc->tosort_num;
    push_ls(slc);
    sl->sublevels[n] = ((void*)0);
   }
  }

  memcpy(sl->tosort + sl->start_position, sl->leaves,
      sl->leaves_num * sizeof(struct sort_list_item*));

  sort_left_dec(sl->leaves_num);
 }




  run_sort_cycle_st();
}
