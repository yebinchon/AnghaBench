
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int OPAL_HANDLE_INTERRUPT ;
 int opal_call (int ,int ,int ) ;
 int * opal_hb_proc ;
 int vtophys (scalar_t__*) ;
 int wakeup (int *) ;

__attribute__((used)) static void
opal_intr(void *xintr)
{
 uint64_t events = 0;

 opal_call(OPAL_HANDLE_INTERRUPT, (uint32_t)(uint64_t)xintr,
     vtophys(&events));

 if (events != 0 && opal_hb_proc != ((void*)0))
  wakeup(opal_hb_proc);

}
