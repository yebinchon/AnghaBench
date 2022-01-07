
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct pf_frent {int fe_off; } ;


 int CTASSERT (int) ;
 int PF_FRAG_ENTRY_POINTS ;

__attribute__((used)) static inline int
pf_frent_index(struct pf_frent *frent)
{






 CTASSERT(((u_int16_t)0xffff &~ 7) / (0x10000 / PF_FRAG_ENTRY_POINTS) ==
     16 - 1);
 CTASSERT(((u_int16_t)0xffff >> 3) / PF_FRAG_ENTRY_POINTS == 512 - 1);

 return frent->fe_off / (0x10000 / PF_FRAG_ENTRY_POINTS);
}
