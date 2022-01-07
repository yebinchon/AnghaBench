; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_scsi_cmd_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_scsi_cmd_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.ccb_scsiio = type { i64, i64, i64, i32, i32 }
%struct.virtio_scsi_cmd_resp = type { i64, i64, i32, i32 }

@SCSI_STATUS_OK = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@VTSCSI_TRACE = common dso_local global i32 0, align 4
@VTSCSI_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ccb=%p scsi_status=%#x resid=%u sense_resid=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, %struct.ccb_scsiio*, %struct.virtio_scsi_cmd_resp*)* @vtscsi_complete_scsi_cmd_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_complete_scsi_cmd_response(%struct.vtscsi_softc* %0, %struct.ccb_scsiio* %1, %struct.virtio_scsi_cmd_resp* %2) #0 {
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.virtio_scsi_cmd_resp*, align 8
  %7 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %5, align 8
  store %struct.virtio_scsi_cmd_resp* %2, %struct.virtio_scsi_cmd_resp** %6, align 8
  %8 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %6, align 8
  %9 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %12 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %6, align 8
  %14 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %17 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %19 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCSI_STATUS_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %24, i32* %7, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %6, align 8
  %29 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %6, align 8
  %37 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %40 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %45 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %6, align 8
  %48 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %52 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %56

53:                                               ; preds = %32
  %54 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %55 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %43
  %57 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %58 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %57, i32 0, i32 4
  %59 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %6, align 8
  %60 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %63 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %66 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = call i32 @memcpy(i32* %58, i32 %61, i64 %68)
  br label %70

70:                                               ; preds = %56, %27
  %71 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @CAM_REQ_CMP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @VTSCSI_TRACE, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @VTSCSI_ERROR, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %82 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %83 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %86 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %89 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %71, i32 %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.ccb_scsiio* %81, i64 %84, i32 %87, i64 %90)
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %struct.ccb_scsiio*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
