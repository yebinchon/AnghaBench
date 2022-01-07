; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_abort_timedout_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_abort_timedout_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.vtscsi_request = type { i64, %struct.vtscsi_request*, %struct.virtio_scsi_ctrl_tmf_resp }
%struct.virtio_scsi_ctrl_tmf_resp = type { i64 }

@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"req=%p to_req=%p response=%d\0A\00", align 1
@VTSCSI_REQ_STATE_TIMEDOUT = common dso_local global i64 0, align 8
@VIRTIO_SCSI_S_FUNCTION_COMPLETE = common dso_local global i64 0, align 8
@VTSCSI_FLAG_DETACH = common dso_local global i32 0, align 4
@VTSCSI_FLAG_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_complete_abort_timedout_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_complete_abort_timedout_scsi_cmd(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  %5 = alloca %struct.virtio_scsi_ctrl_tmf_resp*, align 8
  %6 = alloca %struct.vtscsi_request*, align 8
  %7 = alloca i64, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %4, align 8
  %8 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %9 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %8, i32 0, i32 2
  store %struct.virtio_scsi_ctrl_tmf_resp* %9, %struct.virtio_scsi_ctrl_tmf_resp** %5, align 8
  %10 = load %struct.virtio_scsi_ctrl_tmf_resp*, %struct.virtio_scsi_ctrl_tmf_resp** %5, align 8
  %11 = getelementptr inbounds %struct.virtio_scsi_ctrl_tmf_resp, %struct.virtio_scsi_ctrl_tmf_resp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %14 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %13, i32 0, i32 1
  %15 = load %struct.vtscsi_request*, %struct.vtscsi_request** %14, align 8
  store %struct.vtscsi_request* %15, %struct.vtscsi_request** %6, align 8
  %16 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %17 = load i32, i32* @VTSCSI_TRACE, align 4
  %18 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %19 = load %struct.vtscsi_request*, %struct.vtscsi_request** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %16, i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.vtscsi_request* %18, %struct.vtscsi_request* %19, i64 %20)
  %22 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %23 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %24 = call i32 @vtscsi_enqueue_request(%struct.vtscsi_softc* %22, %struct.vtscsi_request* %23)
  %25 = load %struct.vtscsi_request*, %struct.vtscsi_request** %6, align 8
  %26 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VTSCSI_REQ_STATE_TIMEDOUT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %55

31:                                               ; preds = %2
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @VIRTIO_SCSI_S_FUNCTION_COMPLETE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %55

36:                                               ; preds = %31
  %37 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %38 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VTSCSI_FLAG_DETACH, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %55

44:                                               ; preds = %36
  %45 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %46 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VTSCSI_FLAG_RESET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %55

52:                                               ; preds = %44
  %53 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %54 = call i32 @vtscsi_reset_bus(%struct.vtscsi_softc* %53)
  br label %55

55:                                               ; preds = %52, %51, %43, %35, %30
  ret void
}

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %struct.vtscsi_request*, %struct.vtscsi_request*, i64) #1

declare dso_local i32 @vtscsi_enqueue_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

declare dso_local i32 @vtscsi_reset_bus(%struct.vtscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
