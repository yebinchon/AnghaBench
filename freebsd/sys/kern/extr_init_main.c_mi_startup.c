
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct sysinit {int subsystem; scalar_t__ order; scalar_t__ udata; int (* func ) (scalar_t__) ;} ;


 int DB_STGY_ANY ;
 int DB_STGY_PROC ;
 int Giant ;
 int MA_NOTRECURSED ;
 int MA_OWNED ;
 int M_TEMP ;
 int RB_VERBOSE ;
 struct sysinit** SET_BEGIN (int ) ;
 struct sysinit** SET_LIMIT (int ) ;
 int SI_SUB_COPYRIGHT ;
 int SI_SUB_DONE ;
 int SI_SUB_DUMMY ;
 int TSENTER () ;
 int TSEXIT () ;
 int boothowto ;
 int bootverbose ;
 int free (struct sysinit**,int ) ;
 int mtx_assert (int *,int) ;
 int mtx_unlock (int *) ;
 struct sysinit** newsysinit ;
 struct sysinit** newsysinit_end ;
 int printf (char*,...) ;
 int stub1 (scalar_t__) ;
 int swapper () ;
 char* symbol_name (int ,int ) ;
 struct sysinit** sysinit ;
 struct sysinit** sysinit_end ;
 int sysinit_set ;
 scalar_t__ verbose_sysinit ;

void
mi_startup(void)
{

 struct sysinit **sipp;
 struct sysinit **xipp;
 struct sysinit *save;






 TSENTER();

 if (boothowto & RB_VERBOSE)
  bootverbose++;

 if (sysinit == ((void*)0)) {
  sysinit = SET_BEGIN(sysinit_set);
  sysinit_end = SET_LIMIT(sysinit_set);
 }

restart:




 for (sipp = sysinit; sipp < sysinit_end; sipp++) {
  for (xipp = sipp + 1; xipp < sysinit_end; xipp++) {
   if ((*sipp)->subsystem < (*xipp)->subsystem ||
        ((*sipp)->subsystem == (*xipp)->subsystem &&
         (*sipp)->order <= (*xipp)->order))
    continue;
   save = *sipp;
   *sipp = *xipp;
   *xipp = save;
  }
 }
 for (sipp = sysinit; sipp < sysinit_end; sipp++) {

  if ((*sipp)->subsystem == SI_SUB_DUMMY)
   continue;

  if ((*sipp)->subsystem == SI_SUB_DONE)
   continue;
  (*((*sipp)->func))((*sipp)->udata);







  (*sipp)->subsystem = SI_SUB_DONE;


  if (newsysinit != ((void*)0)) {
   if (sysinit != SET_BEGIN(sysinit_set))
    free(sysinit, M_TEMP);
   sysinit = newsysinit;
   sysinit_end = newsysinit_end;
   newsysinit = ((void*)0);
   newsysinit_end = ((void*)0);
   goto restart;
  }
 }

 TSEXIT();

 mtx_assert(&Giant, MA_OWNED | MA_NOTRECURSED);
 mtx_unlock(&Giant);




 swapper();

}
