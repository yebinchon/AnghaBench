
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct faultstate {int lookup_still_valid; int entry; int map; } ;


 int vm_map_lookup_done (int ,int ) ;

__attribute__((used)) static inline void
unlock_map(struct faultstate *fs)
{

 if (fs->lookup_still_valid) {
  vm_map_lookup_done(fs->map, fs->entry);
  fs->lookup_still_valid = 0;
 }
}
