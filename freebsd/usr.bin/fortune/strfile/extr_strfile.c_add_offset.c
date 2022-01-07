
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int beoff ;
typedef int FILE ;


 int ALLOC (int *,int) ;
 int Num_pts ;
 int STORING_PTRS ;
 int * Seekpts ;
 int fwrite (int *,int,int,int *) ;
 int htobe64 (int ) ;

void
add_offset(FILE *fp, off_t off)
{
 off_t beoff;

 if (!STORING_PTRS) {
  beoff = htobe64(off);
  fwrite(&beoff, 1, sizeof(beoff), fp);
 } else {
  ALLOC(Seekpts, Num_pts + 1);
  Seekpts[Num_pts] = off;
 }
 Num_pts++;
}
