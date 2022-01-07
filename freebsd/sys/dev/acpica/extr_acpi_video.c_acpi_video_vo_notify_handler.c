
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_video_output {scalar_t__ handle; int vo_numlevels; int* vo_levels; int vo_brightness; } ;
typedef int UINT32 ;
typedef scalar_t__ ACPI_HANDLE ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;




 char* acpi_name (scalar_t__) ;
 int printf (char*,int,char*) ;
 int video_output ;
 int vo_get_brightness (scalar_t__) ;
 int vo_set_brightness (scalar_t__,int) ;

__attribute__((used)) static void
acpi_video_vo_notify_handler(ACPI_HANDLE handle, UINT32 notify, void *context)
{
 struct acpi_video_output *vo;
 int i, j, level, new_level;

 vo = context;
 ACPI_SERIAL_BEGIN(video_output);
 if (vo->handle != handle)
  goto out;

 switch (notify) {
 case 131:
  if (vo->vo_numlevels <= 3)
   goto out;

 case 129:
 case 130:
 case 128:
  if (vo->vo_levels == ((void*)0))
   goto out;
  level = vo_get_brightness(handle);
  if (level < 0)
   goto out;
  break;
 default:
  printf("unknown notify event 0x%x from %s\n",
      notify, acpi_name(handle));
  goto out;
 }

 new_level = level;
 switch (notify) {
 case 131:
  for (i = 2; i < vo->vo_numlevels; i++)
   if (vo->vo_levels[i] == level) {
    new_level = vo->vo_numlevels > i + 1 ?
         vo->vo_levels[i + 1] : vo->vo_levels[2];
    break;
   }
  break;
 case 129:
 case 130:
  for (i = 0; i < vo->vo_numlevels; i++) {
   j = vo->vo_levels[i];
   if (notify == 129) {
    if (j > level &&
        (j < new_level || level == new_level))
     new_level = j;
   } else {
    if (j < level &&
        (j > new_level || level == new_level))
     new_level = j;
   }
  }
  break;
 case 128:
  for (i = 0; i < vo->vo_numlevels; i++)
   if (vo->vo_levels[i] == 0) {
    new_level = 0;
    break;
   }
  break;
 }
 if (new_level != level) {
  vo_set_brightness(handle, new_level);
  vo->vo_brightness = new_level;
 }

out:
 ACPI_SERIAL_END(video_output);
}
