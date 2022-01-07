
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_video_output {int* vo_levels; int vo_numlevels; int vo_fullpower; int vo_economy; int handle; } ;
typedef int ACPI_HANDLE ;


 int ACPI_DEVICE_NOTIFY ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int AcpiInstallNotifyHandler (int ,int ,int ,struct acpi_video_output*) ;
 int AcpiOsFree (int*) ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;
 size_t BCL_ECONOMY ;
 size_t BCL_FULLPOWER ;
 scalar_t__ acpi_video_vo_check_level (struct acpi_video_output*,int) ;
 int acpi_video_vo_notify_handler ;
 int video_output ;
 int vo_get_brightness_levels (int ,int**) ;

__attribute__((used)) static void
acpi_video_vo_bind(struct acpi_video_output *vo, ACPI_HANDLE handle)
{

 ACPI_SERIAL_BEGIN(video_output);
 if (vo->vo_levels != ((void*)0)) {
  AcpiRemoveNotifyHandler(vo->handle, ACPI_DEVICE_NOTIFY,
      acpi_video_vo_notify_handler);
  AcpiOsFree(vo->vo_levels);
  vo->vo_levels = ((void*)0);
 }
 vo->handle = handle;
 vo->vo_numlevels = vo_get_brightness_levels(handle, &vo->vo_levels);
 if (vo->vo_numlevels >= 2) {
  if (vo->vo_fullpower == -1 ||
      acpi_video_vo_check_level(vo, vo->vo_fullpower) != 0) {

   vo->vo_fullpower = vo->vo_levels[BCL_FULLPOWER];
  }
  if (vo->vo_economy == -1 ||
      acpi_video_vo_check_level(vo, vo->vo_economy) != 0) {

   vo->vo_economy = vo->vo_levels[BCL_ECONOMY];
  }
  AcpiInstallNotifyHandler(handle, ACPI_DEVICE_NOTIFY,
      acpi_video_vo_notify_handler, vo);
 }
 ACPI_SERIAL_END(video_output);
}
