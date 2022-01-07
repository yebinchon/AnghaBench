
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;



 int pfs_vncache_load () ;
 int pfs_vncache_unload () ;

__attribute__((used)) static int
pfs_modevent(module_t mod, int evt, void *arg)
{
 switch (evt) {
 case 130:
  pfs_vncache_load();
  break;
 case 128:
 case 129:
  pfs_vncache_unload();
  break;
 default:
  return EOPNOTSUPP;
  break;
 }
 return 0;
}
