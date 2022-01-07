
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct statfs {int f_fstypename; } ;
struct asn_oid {int dummy; } ;
struct TYPE_2__ {struct asn_oid const* oid; int str; } ;


 size_t N_FS_TYPE_MAP ;
 struct asn_oid const OIDX_hrFSUnknown_c ;
 int assert (int ) ;
 TYPE_1__* fs_type_map ;
 scalar_t__ strcmp (int ,int ) ;

const struct asn_oid *
fs_get_type(const struct statfs *fs_p)
{
 u_int t;

 assert(fs_p != ((void*)0));

 for (t = 0; t < N_FS_TYPE_MAP; t++)
  if (strcmp(fs_type_map[t].str, fs_p->f_fstypename) == 0)
   return (fs_type_map[t].oid);

 return (&OIDX_hrFSUnknown_c);
}
