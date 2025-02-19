
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct last_printed {int * str; } ;
struct file_header {TYPE_1__* si; scalar_t__ fr; } ;
struct TYPE_4__ {int zflag; scalar_t__ uflag; } ;
struct TYPE_3__ {scalar_t__ str; } ;
typedef int FILE ;


 int * bwsdup (scalar_t__) ;
 int bwsfree (int *) ;
 int bwsfwrite (scalar_t__,int *,int ) ;
 TYPE_2__ sort_opts_vals ;
 scalar_t__ str_list_coll (int *,TYPE_1__**) ;

__attribute__((used)) static void
file_header_print(struct file_header *fh, FILE *f_out, struct last_printed *lp)
{

 if (fh && fh->fr && f_out && fh->si && fh->si->str) {
  if (sort_opts_vals.uflag) {
   if ((lp->str == ((void*)0)) || (str_list_coll(lp->str, &(fh->si)))) {
    bwsfwrite(fh->si->str, f_out, sort_opts_vals.zflag);
    if (lp->str)
     bwsfree(lp->str);
    lp->str = bwsdup(fh->si->str);
   }
  } else
   bwsfwrite(fh->si->str, f_out, sort_opts_vals.zflag);
 }
}
