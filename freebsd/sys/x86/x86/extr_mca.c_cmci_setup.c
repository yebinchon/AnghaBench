
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmc_state {int dummy; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int M_MCA ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw_mca ;
 void** cmc_state ;
 int cmc_throttle ;
 void* malloc (int,int ,int) ;
 int mca_banks ;
 int mp_maxid ;
 int sysctl_positive_int ;

__attribute__((used)) static void
cmci_setup(void)
{
 int i;

 cmc_state = malloc((mp_maxid + 1) * sizeof(struct cmc_state *), M_MCA,
     M_WAITOK);
 for (i = 0; i <= mp_maxid; i++)
  cmc_state[i] = malloc(sizeof(struct cmc_state) * mca_banks,
      M_MCA, M_WAITOK | M_ZERO);
 SYSCTL_ADD_PROC(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_mca), OID_AUTO,
     "cmc_throttle", CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE,
     &cmc_throttle, 0, sysctl_positive_int, "I",
     "Interval in seconds to throttle corrected MC interrupts");
}
