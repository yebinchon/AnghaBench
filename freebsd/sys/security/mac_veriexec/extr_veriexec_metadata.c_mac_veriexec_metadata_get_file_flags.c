
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_veriexec_file_info {int flags; } ;
typedef int dev_t ;


 int ENOENT ;
 struct mac_veriexec_file_info* mac_veriexec_metadata_get_file_info (int ,long,unsigned long,int*,int) ;

int
mac_veriexec_metadata_get_file_flags(dev_t fsid, long fileid, unsigned long gen,
    int *flags, int check_files)
{
 struct mac_veriexec_file_info *ip;
 int found_dev;

 ip = mac_veriexec_metadata_get_file_info(fsid, fileid, gen, &found_dev,
     check_files);
 if (ip == ((void*)0))
  return (ENOENT);

 *flags = ip->flags;
 return (0);
}
