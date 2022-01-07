; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_start_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_start_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vtscsi_request = type { %union.ccb* }

@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@VTSCSI_REQUEST = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, %union.ccb*)* @vtscsi_start_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_start_scsi_cmd(%struct.vtscsi_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.vtscsi_request*, align 8
  %7 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %8 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %9 = call %struct.vtscsi_request* @vtscsi_dequeue_request(%struct.vtscsi_softc* %8)
  store %struct.vtscsi_request* %9, %struct.vtscsi_request** %6, align 8
  %10 = load %struct.vtscsi_request*, %struct.vtscsi_request** %6, align 8
  %11 = icmp eq %struct.vtscsi_request* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %14 = load %union.ccb*, %union.ccb** %5, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %18 = load i32, i32* @VTSCSI_REQUEST, align 4
  %19 = call i32 @vtscsi_freeze_simq(%struct.vtscsi_softc* %17, i32 %18)
  %20 = load i32, i32* @ENOBUFS, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %union.ccb*, %union.ccb** %5, align 8
  %23 = load %struct.vtscsi_request*, %struct.vtscsi_request** %6, align 8
  %24 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %23, i32 0, i32 0
  store %union.ccb* %22, %union.ccb** %24, align 8
  %25 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %26 = load %struct.vtscsi_request*, %struct.vtscsi_request** %6, align 8
  %27 = call i32 @vtscsi_execute_scsi_cmd(%struct.vtscsi_softc* %25, %struct.vtscsi_request* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %32 = load %struct.vtscsi_request*, %struct.vtscsi_request** %6, align 8
  %33 = call i32 @vtscsi_enqueue_request(%struct.vtscsi_softc* %31, %struct.vtscsi_request* %32)
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.vtscsi_request* @vtscsi_dequeue_request(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_freeze_simq(%struct.vtscsi_softc*, i32) #1

declare dso_local i32 @vtscsi_execute_scsi_cmd(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

declare dso_local i32 @vtscsi_enqueue_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
