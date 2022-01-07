
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_s {int uma; } ;
struct indir {int* array; scalar_t__ shift; } ;


 int NINDIR ;
 int del_indir (struct indir*) ;
 int uma_zfree (int ,void*) ;

__attribute__((used)) static void
destroy_indir(struct md_s *sc, struct indir *ip)
{
 int i;

 for (i = 0; i < NINDIR; i++) {
  if (!ip->array[i])
   continue;
  if (ip->shift)
   destroy_indir(sc, (struct indir*)(ip->array[i]));
  else if (ip->array[i] > 255)
   uma_zfree(sc->uma, (void *)(ip->array[i]));
 }
 del_indir(ip);
}
