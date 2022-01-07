
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {scalar_t__ bd_numdirtybuffers; scalar_t__ bd_lodirtybuffers; scalar_t__ bd_hidirtybuffers; } ;


 int BD_DOMAIN (struct bufdomain*) ;
 int BIT_SET (int ,int ,int *) ;
 int BUF_DOMAINS ;
 int bdhidirty ;
 int bdirtylock ;
 int bdlodirty ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
bd_set(struct bufdomain *bd)
{

 mtx_lock(&bdirtylock);
 if (bd->bd_numdirtybuffers > bd->bd_lodirtybuffers)
  BIT_SET(BUF_DOMAINS, BD_DOMAIN(bd), &bdlodirty);
 if (bd->bd_numdirtybuffers > bd->bd_hidirtybuffers)
  BIT_SET(BUF_DOMAINS, BD_DOMAIN(bd), &bdhidirty);
 mtx_unlock(&bdirtylock);
}
