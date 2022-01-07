
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fpOut; int fpIn; int tree; int symbol; int inodesin; int symbolsin; } ;
typedef TYPE_1__ unpack_descriptor_t ;


 int fclose (int ) ;
 int free (int ) ;

__attribute__((used)) static void
unpack_descriptor_fini(unpack_descriptor_t *unpackd)
{

 free(unpackd->symbolsin);
 free(unpackd->inodesin);
 free(unpackd->symbol);
 free(unpackd->tree);

 fclose(unpackd->fpIn);
 fclose(unpackd->fpOut);
}
