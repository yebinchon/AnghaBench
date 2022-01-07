; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_scsi_cmd_cam_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_scsi_cmd_cam_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi_cmd_resp = type { i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_DATA_RUN_ERR = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@CAM_SCSI_BUSY = common dso_local global i32 0, align 4
@CAM_SCSI_IT_NEXUS_LOST = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_scsi_cmd_resp*)* @vtscsi_scsi_cmd_cam_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_scsi_cmd_cam_status(%struct.virtio_scsi_cmd_resp* %0) #0 {
  %2 = alloca %struct.virtio_scsi_cmd_resp*, align 8
  %3 = alloca i32, align 4
  store %struct.virtio_scsi_cmd_resp* %0, %struct.virtio_scsi_cmd_resp** %2, align 8
  %4 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %21 [
    i32 132, label %7
    i32 131, label %9
    i32 136, label %11
    i32 135, label %13
    i32 130, label %15
    i32 134, label %17
    i32 128, label %19
    i32 129, label %19
    i32 133, label %19
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %8, i32* %3, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @CAM_DATA_RUN_ERR, align 4
  store i32 %10, i32* %3, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @CAM_REQ_ABORTED, align 4
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  store i32 %14, i32* %3, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @CAM_SCSI_BUSY, align 4
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %1, %1, %1
  %20 = load i32, i32* @CAM_SCSI_IT_NEXUS_LOST, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
