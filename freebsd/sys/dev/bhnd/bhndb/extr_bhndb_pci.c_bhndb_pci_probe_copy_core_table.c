
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhndb_pci_probe {int ncores; int cores; } ;
struct bhnd_core_info {int dummy; } ;


 int M_BHND ;
 int M_WAITOK ;
 struct bhnd_core_info* malloc (size_t,int ,int ) ;
 int memcpy (struct bhnd_core_info*,int ,size_t) ;

__attribute__((used)) static int
bhndb_pci_probe_copy_core_table(struct bhndb_pci_probe *probe,
    struct bhnd_core_info **cores, u_int *ncores)
{
 size_t len = sizeof(**cores) * probe->ncores;

 *cores = malloc(len, M_BHND, M_WAITOK);
 memcpy(*cores, probe->cores, len);

 *ncores = probe->ncores;

 return (0);
}
