
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int VERIEXEC_FILES_FIRST ;
 int * mac_veriexec_metadata_get_file_info (int ,long,unsigned long,int *,int ) ;

int
mac_veriexec_metadata_has_file(dev_t fsid, long fileid, unsigned long gen)
{

 return (mac_veriexec_metadata_get_file_info(fsid, fileid, gen, ((void*)0),
     VERIEXEC_FILES_FIRST) != ((void*)0));
}
