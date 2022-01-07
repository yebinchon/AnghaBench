
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_video_output_queue {int dummy; } ;
struct acpi_video_output {int adr; int * vo_levels; int handle; int vo_sysctl_ctx; int * vo_sysctl_tree; } ;
struct TYPE_2__ {int next; } ;


 int ACPI_DEVICE_NOTIFY ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int AcpiOsFree (int *) ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;


 int DOD_DEVID_MASK ;


 int M_ACPIVIDEO ;
 int STAILQ_REMOVE (struct acpi_video_output_queue*,struct acpi_video_output*,int ,int ) ;
 int acpi_video_output ;
 int acpi_video_vo_notify_handler ;
 struct acpi_video_output_queue crt_units ;
 struct acpi_video_output_queue ext_units ;
 int free (struct acpi_video_output*,int ) ;
 struct acpi_video_output_queue lcd_units ;
 struct acpi_video_output_queue other_units ;
 int sysctl_ctx_free (int *) ;
 struct acpi_video_output_queue tv_units ;
 int video ;
 TYPE_1__ vo_unit ;

__attribute__((used)) static void
acpi_video_vo_destroy(struct acpi_video_output *vo)
{
 struct acpi_video_output_queue *voqh;

 ACPI_SERIAL_ASSERT(video);
 if (vo->vo_sysctl_tree != ((void*)0)) {
  vo->vo_sysctl_tree = ((void*)0);
  sysctl_ctx_free(&vo->vo_sysctl_ctx);
 }
 if (vo->vo_levels != ((void*)0)) {
  AcpiRemoveNotifyHandler(vo->handle, ACPI_DEVICE_NOTIFY,
      acpi_video_vo_notify_handler);
  AcpiOsFree(vo->vo_levels);
 }

 switch (vo->adr & DOD_DEVID_MASK) {
 case 129:
  voqh = &crt_units;
  break;
 case 128:
  voqh = &tv_units;
  break;
 case 131:
  voqh = &ext_units;
  break;
 case 130:
  voqh = &lcd_units;
  break;
 default:
  voqh = &other_units;
 }
 STAILQ_REMOVE(voqh, vo, acpi_video_output, vo_unit.next);
 free(vo, M_ACPIVIDEO);
}
