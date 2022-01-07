; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_init_scsi_cmd_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_init_scsi_cmd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.virtio_scsi_cmd_req = type { i64, i32, i32, i32 }

@VIRTIO_SCSI_S_HEAD = common dso_local global i32 0, align 4
@VIRTIO_SCSI_S_ORDERED = common dso_local global i32 0, align 4
@VIRTIO_SCSI_S_ACA = common dso_local global i32 0, align 4
@VIRTIO_SCSI_S_SIMPLE = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccb_scsiio*, %struct.virtio_scsi_cmd_req*)* @vtscsi_init_scsi_cmd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_init_scsi_cmd_req(%struct.ccb_scsiio* %0, %struct.virtio_scsi_cmd_req* %1) #0 {
  %3 = alloca %struct.ccb_scsiio*, align 8
  %4 = alloca %struct.virtio_scsi_cmd_req*, align 8
  %5 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %3, align 8
  store %struct.virtio_scsi_cmd_req* %1, %struct.virtio_scsi_cmd_req** %4, align 8
  %6 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %7 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 128, label %11
    i32 130, label %13
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @VIRTIO_SCSI_S_HEAD, align 4
  store i32 %10, i32* %5, align 4
  br label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @VIRTIO_SCSI_S_ORDERED, align 4
  store i32 %12, i32* %5, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @VIRTIO_SCSI_S_ACA, align 4
  store i32 %14, i32* %5, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @VIRTIO_SCSI_S_SIMPLE, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %13, %11, %9
  %18 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %19 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %18, i32 0, i32 3
  %20 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %4, align 8
  %21 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @vtscsi_set_request_lun(%struct.TYPE_4__* %19, i32 %22)
  %24 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %25 = ptrtoint %struct.ccb_scsiio* %24 to i64
  %26 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %4, align 8
  %27 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %4, align 8
  %30 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.virtio_scsi_cmd_req*, %struct.virtio_scsi_cmd_req** %4, align 8
  %32 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CAM_CDB_POINTER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %17
  %42 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %43 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %51

46:                                               ; preds = %17
  %47 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %48 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i32 [ %45, %41 ], [ %50, %46 ]
  %53 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %54 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %33, i32 %52, i32 %55)
  ret void
}

declare dso_local i32 @vtscsi_set_request_lun(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
