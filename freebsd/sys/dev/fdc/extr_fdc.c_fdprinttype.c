
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_type {int sectrac; int secsize; int datalen; int gap; int tracks; int size; int trans; int heads; int f_gap; int f_inter; int offset_side2; int flags; } ;


 int printf (char*,int,int,int,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void
fdprinttype(struct fd_type *ft)
{

 printf("(%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,0x%x)",
     ft->sectrac, ft->secsize, ft->datalen, ft->gap, ft->tracks,
     ft->size, ft->trans, ft->heads, ft->f_gap, ft->f_inter,
     ft->offset_side2, ft->flags);
}
