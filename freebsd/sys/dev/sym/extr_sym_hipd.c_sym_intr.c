
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* hcb_p ;


 int DEBUG_FLAGS ;
 int DEBUG_TINY ;
 int SYM_LOCK () ;
 int SYM_UNLOCK () ;
 int printf (char*) ;
 int sym_intr1 (void*) ;

__attribute__((used)) static void sym_intr(void *arg)
{
 hcb_p np = arg;

 SYM_LOCK();

 if (DEBUG_FLAGS & DEBUG_TINY) printf ("[");
 sym_intr1((hcb_p) arg);
 if (DEBUG_FLAGS & DEBUG_TINY) printf ("]");

 SYM_UNLOCK();
}
