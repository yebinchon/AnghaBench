
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cnputc (char const) ;
 int cnputs_mtx ;
 int mtx_lock_spin (int *) ;
 scalar_t__ mtx_owned (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ use_cnputs_mtx ;

void
cnputsn(const char *p, size_t n)
{
 size_t i;
 int unlock_reqd = 0;

 if (use_cnputs_mtx) {





  if (mtx_owned(&cnputs_mtx))
   return;
  mtx_lock_spin(&cnputs_mtx);
  unlock_reqd = 1;
 }

 for (i = 0; i < n; i++)
  cnputc(p[i]);

 if (unlock_reqd)
  mtx_unlock_spin(&cnputs_mtx);
}
