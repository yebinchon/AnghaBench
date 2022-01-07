
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_write_ucore_pktdistr (unsigned int) ;

__attribute__((used)) static __inline__ void
nlm_ucore_setup_poepktdistr(int pdm, int mc3, int pdl, int dest, int hash)
{
 unsigned int val = 0;

 val |= ((hash & 0x1) << 20);
 val |= ((dest & 0xfff) << 8);
 val |= ((pdl & 0xf) << 4);
 val |= ((mc3 & 0x1) << 3);
 val |= (pdm & 0x7);

 nlm_write_ucore_pktdistr(val);
}
