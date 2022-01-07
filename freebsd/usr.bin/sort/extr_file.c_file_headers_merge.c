
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct last_printed {scalar_t__ str; } ;
struct file_header {scalar_t__ fr; } ;
typedef int lp ;
typedef int FILE ;


 int bwsfree (scalar_t__) ;
 int file_header_list_push (struct file_header*,struct file_header**,size_t) ;
 int file_header_list_rearrange_from_header (struct file_header**,size_t) ;
 int file_header_print (struct file_header*,int *,struct last_printed*) ;
 int file_header_read_next (struct file_header*) ;
 int memset (struct last_printed*,int ,int) ;

__attribute__((used)) static void
file_headers_merge(size_t fnum, struct file_header **fh, FILE *f_out)
{
 struct last_printed lp;
 size_t i;

 memset(&lp, 0, sizeof(lp));




 for (i = 0; i < fnum; i++)
  file_header_list_push(fh[i], fh, i);

 while (fh[0]->fr) {

  file_header_print(fh[0], f_out, &lp);

  file_header_read_next(fh[0]);

  file_header_list_rearrange_from_header(fh, fnum);
 }

 if (lp.str)
  bwsfree(lp.str);
}
