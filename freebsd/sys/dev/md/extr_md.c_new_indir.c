
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct indir {int total; int shift; int * array; } ;


 int M_MD ;
 int M_MDSECT ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int NINDIR ;
 int free (struct indir*,int ) ;
 void* malloc (int,int ,int) ;
 scalar_t__ md_malloc_wait ;

__attribute__((used)) static struct indir *
new_indir(u_int shift)
{
 struct indir *ip;

 ip = malloc(sizeof *ip, M_MD, (md_malloc_wait ? M_WAITOK : M_NOWAIT)
     | M_ZERO);
 if (ip == ((void*)0))
  return (((void*)0));
 ip->array = malloc(sizeof(uintptr_t) * NINDIR,
     M_MDSECT, (md_malloc_wait ? M_WAITOK : M_NOWAIT) | M_ZERO);
 if (ip->array == ((void*)0)) {
  free(ip, M_MD);
  return (((void*)0));
 }
 ip->total = NINDIR;
 ip->shift = shift;
 return (ip);
}
