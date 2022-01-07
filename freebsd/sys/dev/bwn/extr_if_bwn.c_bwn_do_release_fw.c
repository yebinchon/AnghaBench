
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_fwfile {int * filename; int * fw; } ;


 int FIRMWARE_UNLOAD ;
 int firmware_put (int *,int ) ;

__attribute__((used)) static void
bwn_do_release_fw(struct bwn_fwfile *bfw)
{

 if (bfw->fw != ((void*)0))
  firmware_put(bfw->fw, FIRMWARE_UNLOAD);
 bfw->fw = ((void*)0);
 bfw->filename = ((void*)0);
}
