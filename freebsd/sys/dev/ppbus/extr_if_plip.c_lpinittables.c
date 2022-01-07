
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LPIPTBLSIZE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int* ctrecvh ;
 int* ctrecvl ;
 int* ctxmith ;
 int* ctxmitl ;
 int lp_tables_lock ;
 void* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int* trecvh ;
 int* trecvl ;
 int* txmith ;
 int* txmitl ;

__attribute__((used)) static int
lpinittables(void)
{
 int i;

 mtx_lock(&lp_tables_lock);
 if (txmith == ((void*)0))
  txmith = malloc(4 * LPIPTBLSIZE, M_DEVBUF, M_NOWAIT);

 if (txmith == ((void*)0)) {
  mtx_unlock(&lp_tables_lock);
  return (1);
 }

 if (ctxmith == ((void*)0))
  ctxmith = malloc(4 * LPIPTBLSIZE, M_DEVBUF, M_NOWAIT);

 if (ctxmith == ((void*)0)) {
  mtx_unlock(&lp_tables_lock);
  return (1);
 }

 for (i = 0; i < LPIPTBLSIZE; i++) {
  ctxmith[i] = (i & 0xF0) >> 4;
  ctxmitl[i] = 0x10 | (i & 0x0F);
  ctrecvh[i] = (i & 0x78) << 1;
  ctrecvl[i] = (i & 0x78) >> 3;
 }

 for (i = 0; i < LPIPTBLSIZE; i++) {
  txmith[i] = ((i & 0x80) >> 3) | ((i & 0x70) >> 4) | 0x08;
  txmitl[i] = ((i & 0x08) << 1) | (i & 0x07);
  trecvh[i] = ((~i) & 0x80) | ((i & 0x38) << 1);
  trecvl[i] = (((~i) & 0x80) >> 4) | ((i & 0x38) >> 3);
 }
 mtx_unlock(&lp_tables_lock);

 return (0);
}
