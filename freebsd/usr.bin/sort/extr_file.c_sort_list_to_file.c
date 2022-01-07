
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sort_mods {int nflag; int hflag; int gflag; int Vflag; int Rflag; int Mflag; } ;
struct sort_list {int count; int list; } ;
struct TYPE_4__ {struct sort_mods sm; } ;
struct TYPE_3__ {int sort_method; scalar_t__ sflag; } ;


 int DEFAULT_SORT_ALGORITHM ;
 int DEFAULT_SORT_FUNC ;





 scalar_t__ byte_sort ;
 scalar_t__ debug_sort ;
 int err (int,char*,int ) ;
 int errx (int,char*,int ) ;
 char* get_sort_method_name (int) ;
 int getstr (int) ;
 int heapsort ;
 TYPE_2__* keys ;
 int mergesort ;
 int mt_sort (struct sort_list*,int ,char const*) ;
 int printf (char*,char*) ;
 int rxsort (int ,int ) ;
 int sort_list_dump (struct sort_list*,char const*) ;
 TYPE_1__ sort_opts_vals ;
 int sort_qsort ;

void
sort_list_to_file(struct sort_list *list, const char *outfile)
{
 struct sort_mods *sm = &(keys[0].sm);

 if (!(sm->Mflag) && !(sm->Rflag) && !(sm->Vflag) && !(sm->Vflag) &&
     !(sm->gflag) && !(sm->hflag) && !(sm->nflag)) {
  if ((sort_opts_vals.sort_method == 132) && byte_sort)
   sort_opts_vals.sort_method = 128;

 } else if (sort_opts_vals.sort_method == 128)
  err(2, "%s", getstr(9));





 if (sort_opts_vals.sflag) {
  switch (sort_opts_vals.sort_method){
  case 130:
   break;
  case 128:
   break;
  case 132:
   sort_opts_vals.sort_method = 130;
   break;
  default:
   errx(2, "%s", getstr(10));
  }
 }

 if (sort_opts_vals.sort_method == 132)
  sort_opts_vals.sort_method = DEFAULT_SORT_ALGORITHM;

 if (debug_sort)
  printf("sort_method=%s\n",
      get_sort_method_name(sort_opts_vals.sort_method));

 switch (sort_opts_vals.sort_method){
 case 128:
  rxsort(list->list, list->count);
  sort_list_dump(list, outfile);
  break;
 case 130:
  mt_sort(list, mergesort, outfile);
  break;
 case 131:
  mt_sort(list, heapsort, outfile);
  break;
 case 129:
  mt_sort(list, sort_qsort, outfile);
  break;
 default:
  mt_sort(list, DEFAULT_SORT_FUNC, outfile);
  break;
 }
}
