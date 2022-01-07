
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhndb_pci_probe {scalar_t__ m_target; TYPE_1__* m_win; int * m_res; int m_valid; } ;
typedef scalar_t__ bhnd_size_t ;
typedef scalar_t__ bhnd_addr_t ;
struct TYPE_2__ {scalar_t__ win_type; scalar_t__ win_size; } ;


 scalar_t__ BHNDB_REGWIN_T_DYN ;
 int KASSERT (int,char*) ;

__attribute__((used)) static bool
bhndb_pci_probe_has_mapping(struct bhndb_pci_probe *probe, bhnd_addr_t addr,
    bhnd_size_t size)
{
 if (!probe->m_valid)
  return (0);

 KASSERT(probe->m_win != ((void*)0), ("missing register window"));
 KASSERT(probe->m_res != ((void*)0), ("missing regwin resource"));
 KASSERT(probe->m_win->win_type == BHNDB_REGWIN_T_DYN,
     ("unexpected window type %d", probe->m_win->win_type));

 if (addr < probe->m_target)
  return (0);

 if (addr >= probe->m_target + probe->m_win->win_size)
  return (0);

 if ((probe->m_target + probe->m_win->win_size) - addr < size)
  return (0);

 return (1);
}
