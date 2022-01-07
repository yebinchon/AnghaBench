
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_state {int kcmode; int driver_abi; } ;


 int KCMODE_ABIFLAG ;

__attribute__((used)) static inline int
abi_aware(struct pps_state *pps, int vers)
{

 return ((pps->kcmode & KCMODE_ABIFLAG) && pps->driver_abi >= vers);
}
