; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_rescan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VTSCSI_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot allocate CCB\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, i32, i32)* @vtscsi_execute_rescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_execute_rescan(%struct.vtscsi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vtscsi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i64, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %9, %union.ccb** %7, align 8
  %10 = load %union.ccb*, %union.ccb** %7, align 8
  %11 = icmp eq %union.ccb* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %14 = load i32, i32* @VTSCSI_ERROR, align 4
  %15 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %13, i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %36

16:                                               ; preds = %3
  %17 = load %union.ccb*, %union.ccb** %7, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cam_sim_path(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @xpt_create_path(i32* %19, i32* null, i32 %23, i32 %24, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @CAM_REQ_CMP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load %union.ccb*, %union.ccb** %7, align 8
  %32 = call i32 @xpt_free_ccb(%union.ccb* %31)
  br label %36

33:                                               ; preds = %16
  %34 = load %union.ccb*, %union.ccb** %7, align 8
  %35 = call i32 @xpt_rescan(%union.ccb* %34)
  br label %36

36:                                               ; preds = %33, %30, %12
  ret void
}

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
