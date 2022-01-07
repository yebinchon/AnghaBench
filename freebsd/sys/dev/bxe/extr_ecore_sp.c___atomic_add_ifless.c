
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecore_atomic_t ;


 int ECORE_ATOMIC_CMPXCHG (int *,int,int) ;
 int ECORE_ATOMIC_READ (int *) ;
 scalar_t__ ECORE_LIKELY (int) ;
 scalar_t__ ECORE_UNLIKELY (int) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline bool __atomic_add_ifless(ecore_atomic_t *v, int a, int u)
{
 int c, old;

 c = ECORE_ATOMIC_READ(v);
 for (;;) {
  if (ECORE_UNLIKELY(c + a >= u))
   return FALSE;

  old = ECORE_ATOMIC_CMPXCHG((v), c, c + a);
  if (ECORE_LIKELY(old == c))
   break;
  c = old;
 }

 return TRUE;
}
