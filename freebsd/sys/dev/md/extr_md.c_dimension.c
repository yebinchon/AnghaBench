
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct indir {int total; int shift; void* array; } ;
typedef int off_t ;


 int M_MD ;
 int M_MDSECT ;
 int M_WAITOK ;
 int M_ZERO ;
 int NINDIR ;
 void* malloc (int,int ,int) ;
 int nshift ;

__attribute__((used)) static struct indir *
dimension(off_t size)
{
 off_t rcnt;
 struct indir *ip;
 int layer;

 rcnt = size;
 layer = 0;
 while (rcnt > NINDIR) {
  rcnt /= NINDIR;
  layer++;
 }





 ip = malloc(sizeof *ip, M_MD, M_WAITOK | M_ZERO);
 ip->array = malloc(sizeof(uintptr_t) * NINDIR,
     M_MDSECT, M_WAITOK | M_ZERO);
 ip->total = NINDIR;
 ip->shift = layer * nshift;
 return (ip);
}
