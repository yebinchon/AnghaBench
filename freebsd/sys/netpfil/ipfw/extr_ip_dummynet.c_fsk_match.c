
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t fs_nr; } ;
struct dn_fsk {TYPE_1__ fs; } ;


 int DNHT_KEY_IS_OBJ ;

__attribute__((used)) static int
fsk_match(void *obj, uintptr_t key, int flags, void *arg)
{
 struct dn_fsk *fs = obj;
 int i = !(flags & DNHT_KEY_IS_OBJ) ? key :
  ((struct dn_fsk *)key)->fs.fs_nr;

 return (fs->fs.fs_nr == i);
}
