
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int system_id; struct TYPE_5__* bibliographic_file_id; struct TYPE_5__* abstract_file_id; struct TYPE_5__* copyright_file_id; struct TYPE_5__* application_id; struct TYPE_5__* preparer_id; struct TYPE_5__* publisher_id; } ;
struct TYPE_4__ {int sectorSize; int isoLevel; int include_padding_areas; int boot_entries; int boot_images; scalar_t__ is_bootable; scalar_t__ boot_image_directory; int * generic_bootimage; scalar_t__ has_generic_bootimage; TYPE_2__ primaryDescriptor; scalar_t__ omit_trailing_period; scalar_t__ allow_multidot; scalar_t__ allow_lowercase; scalar_t__ allow_illegal_chars; scalar_t__ allow_max_name; scalar_t__ allow_start_dot; scalar_t__ allow_deep_trees; scalar_t__ chrp_boot; scalar_t__ archimedes_enabled; scalar_t__ rr_moved_dir; scalar_t__ rock_ridge_move_count; scalar_t__ rock_ridge_renamed_dir_name; scalar_t__ rock_ridge_enabled; scalar_t__ follow_sym_links; scalar_t__ keep_bad_images; scalar_t__ verbose_level; } ;
typedef TYPE_1__ iso9660_disk ;


 int LIST_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 int memset (TYPE_2__*,int,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
cd9660_set_defaults(iso9660_disk *diskStructure)
{

 diskStructure->sectorSize = 2048;


 diskStructure->verbose_level = 0;
 diskStructure->keep_bad_images = 0;
 diskStructure->follow_sym_links = 0;
 diskStructure->isoLevel = 2;

 diskStructure->rock_ridge_enabled = 0;
 diskStructure->rock_ridge_renamed_dir_name = 0;
 diskStructure->rock_ridge_move_count = 0;
 diskStructure->rr_moved_dir = 0;

 diskStructure->archimedes_enabled = 0;
 diskStructure->chrp_boot = 0;

 diskStructure->include_padding_areas = 1;


 diskStructure->allow_deep_trees =
     diskStructure->allow_start_dot =
     diskStructure->allow_max_name =
     diskStructure->allow_illegal_chars =
     diskStructure->allow_lowercase =
     diskStructure->allow_multidot =
     diskStructure->omit_trailing_period = 0;


 memset(&diskStructure->primaryDescriptor, 0, 2048);

 memset(diskStructure->primaryDescriptor.publisher_id, 0x20,128);
 memset(diskStructure->primaryDescriptor.preparer_id, 0x20,128);
 memset(diskStructure->primaryDescriptor.application_id, 0x20,128);
 memset(diskStructure->primaryDescriptor.copyright_file_id, 0x20,37);
 memset(diskStructure->primaryDescriptor.abstract_file_id, 0x20,37);
 memset(diskStructure->primaryDescriptor.bibliographic_file_id, 0x20,37);

 strcpy(diskStructure->primaryDescriptor.system_id, "FreeBSD");


 diskStructure->has_generic_bootimage = 0;
 diskStructure->generic_bootimage = ((void*)0);

 diskStructure->boot_image_directory = 0;


 diskStructure->is_bootable = 0;
 TAILQ_INIT(&diskStructure->boot_images);
 LIST_INIT(&diskStructure->boot_entries);
}
