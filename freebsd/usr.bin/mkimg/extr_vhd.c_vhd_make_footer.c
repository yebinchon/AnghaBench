
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int cylinders; } ;
struct vhd_footer {int checksum; int id; int disk_type; TYPE_1__ geometry; int current_size; int original_size; int creator_os; int creator_version; int creator_tool; int timestamp; int data_offset; int version; int features; int cookie; } ;
typedef int mkimg_uuid_t ;


 int VHD_CREATOR_OS ;
 int VHD_CREATOR_TOOL ;
 int VHD_CREATOR_VERSION ;
 int VHD_FEATURES_RESERVED ;
 int VHD_FOOTER_COOKIE ;
 int VHD_VERSION ;
 int be16enc (int *,int ) ;
 int be32enc (int *,int ) ;
 int be64enc (int *,int ) ;
 int memset (struct vhd_footer*,int ,int) ;
 int mkimg_uuid (int *) ;
 int mkimg_uuid_enc (int *,int *) ;
 int vhd_checksum (struct vhd_footer*,int) ;
 int vhd_geometry (int ,TYPE_1__*) ;
 int vhd_timestamp () ;

__attribute__((used)) static void
vhd_make_footer(struct vhd_footer *footer, uint64_t image_size,
    uint32_t disk_type, uint64_t data_offset)
{
 mkimg_uuid_t id;

 memset(footer, 0, sizeof(*footer));
 be64enc(&footer->cookie, VHD_FOOTER_COOKIE);
 be32enc(&footer->features, VHD_FEATURES_RESERVED);
 be32enc(&footer->version, VHD_VERSION);
 be64enc(&footer->data_offset, data_offset);
 be32enc(&footer->timestamp, vhd_timestamp());
 be32enc(&footer->creator_tool, VHD_CREATOR_TOOL);
 be32enc(&footer->creator_version, VHD_CREATOR_VERSION);
 be32enc(&footer->creator_os, VHD_CREATOR_OS);
 be64enc(&footer->original_size, image_size);
 be64enc(&footer->current_size, image_size);
 vhd_geometry(image_size, &footer->geometry);
 be16enc(&footer->geometry.cylinders, footer->geometry.cylinders);
 be32enc(&footer->disk_type, disk_type);
 mkimg_uuid(&id);
 mkimg_uuid_enc(&footer->id, &id);
 be32enc(&footer->checksum, vhd_checksum(footer, sizeof(*footer)));
}
