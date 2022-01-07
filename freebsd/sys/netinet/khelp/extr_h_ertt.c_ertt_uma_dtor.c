
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txseginfo {int dummy; } ;
struct ertt {int txsegi_q; } ;


 struct txseginfo* TAILQ_FIRST (int *) ;
 struct txseginfo* TAILQ_NEXT (struct txseginfo*,int ) ;
 int txsegi_lnk ;
 int txseginfo_zone ;
 int uma_zfree (int ,struct txseginfo*) ;

__attribute__((used)) static void
ertt_uma_dtor(void *mem, int size, void *arg)
{
 struct ertt *e_t;
 struct txseginfo *n_txsi, *txsi;

 e_t = mem;
 txsi = TAILQ_FIRST(&e_t->txsegi_q);
 while (txsi != ((void*)0)) {
  n_txsi = TAILQ_NEXT(txsi, txsegi_lnk);
  uma_zfree(txseginfo_zone, txsi);
  txsi = n_txsi;
 }
}
