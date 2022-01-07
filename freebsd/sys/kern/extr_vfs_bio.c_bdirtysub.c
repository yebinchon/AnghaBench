
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {int bd_lodirtybuffers; int bd_hidirtybuffers; int bd_numdirtybuffers; } ;
struct buf {int dummy; } ;


 int atomic_fetchadd_int (int *,int) ;
 int bd_clear (struct bufdomain*) ;
 int bdirtywakeup () ;
 struct bufdomain* bufdomain (struct buf*) ;

__attribute__((used)) static void
bdirtysub(struct buf *bp)
{
 struct bufdomain *bd;
 int num;

 bd = bufdomain(bp);
 num = atomic_fetchadd_int(&bd->bd_numdirtybuffers, -1);
 if (num == (bd->bd_lodirtybuffers + bd->bd_hidirtybuffers) / 2)
  bdirtywakeup();
 if (num == bd->bd_lodirtybuffers || num == bd->bd_hidirtybuffers)
  bd_clear(bd);
}
