
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {int sidx; int sdesc; } ;
struct fl_sdesc {int dummy; } ;


 int M_CXGBE ;
 int M_WAITOK ;
 int M_ZERO ;
 int malloc (int,int ,int) ;

__attribute__((used)) static int
alloc_fl_sdesc(struct sge_fl *fl)
{

 fl->sdesc = malloc(fl->sidx * 8 * sizeof(struct fl_sdesc), M_CXGBE,
     M_ZERO | M_WAITOK);

 return (0);
}
