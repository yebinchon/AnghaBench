
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UMUTEX_NONCONSISTENT ;
 int UMUTEX_RB_NOTRECOV ;
 int UMUTEX_RB_OWNERDEAD ;
 int UMUTEX_UNOWNED ;

__attribute__((used)) static uint32_t
umtx_unlock_val(uint32_t flags, bool rb)
{

 if (rb)
  return (UMUTEX_RB_OWNERDEAD);
 else if ((flags & UMUTEX_NONCONSISTENT) != 0)
  return (UMUTEX_RB_NOTRECOV);
 else
  return (UMUTEX_UNOWNED);

}
