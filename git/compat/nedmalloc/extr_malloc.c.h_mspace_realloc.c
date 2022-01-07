
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mstate ;
typedef int mspace ;
typedef int mchunkptr ;


 int USAGE_ERROR_ACTION (int ,int ) ;
 int get_mstate_for (int ) ;
 void* internal_realloc (int ,void*,size_t) ;
 int mem2chunk (void*) ;
 int mspace_free (int ,void*) ;
 void* mspace_malloc (int ,size_t) ;
 int ok_magic (int ) ;

void* mspace_realloc(mspace msp, void* oldmem, size_t bytes) {
  if (oldmem == 0)
    return mspace_malloc(msp, bytes);






  else {




    mstate ms = (mstate)msp;

    if (!ok_magic(ms)) {
      USAGE_ERROR_ACTION(ms,ms);
      return 0;
    }
    return internal_realloc(ms, oldmem, bytes);
  }
}
