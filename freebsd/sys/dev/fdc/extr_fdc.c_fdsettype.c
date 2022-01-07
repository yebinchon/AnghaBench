
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_type {int size; int sectrac; int heads; int tracks; int secsize; } ;
struct fd_data {int sectorsize; struct fd_type* ft; } ;



__attribute__((used)) static void
fdsettype(struct fd_data *fd, struct fd_type *ft)
{
 fd->ft = ft;
 ft->size = ft->sectrac * ft->heads * ft->tracks;
 fd->sectorsize = 128 << fd->ft->secsize;
}
