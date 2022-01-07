
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_video_output {int* vo_levels; int vo_numlevels; } ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int EINVAL ;
 int ENODEV ;
 int video_output ;

__attribute__((used)) static int
acpi_video_vo_check_level(struct acpi_video_output *vo, int level)
{
 int i;

 ACPI_SERIAL_ASSERT(video_output);
 if (vo->vo_levels == ((void*)0))
  return (ENODEV);
 for (i = 0; i < vo->vo_numlevels; i++)
  if (vo->vo_levels[i] == level)
   return (0);
 return (EINVAL);
}
