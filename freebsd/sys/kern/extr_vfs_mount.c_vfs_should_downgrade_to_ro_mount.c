
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;





 int MNT_RDONLY ;
 int MNT_UPDATE ;

__attribute__((used)) static bool
vfs_should_downgrade_to_ro_mount(uint64_t fsflags, int error)
{

 if ((fsflags & MNT_UPDATE) != 0)
  return (0);

 if ((fsflags & MNT_RDONLY) != 0)
  return (0);

 switch (error) {
 case 129:
 case 130:
 case 128:





  return (1);
 default:
  return (0);
 }
}
