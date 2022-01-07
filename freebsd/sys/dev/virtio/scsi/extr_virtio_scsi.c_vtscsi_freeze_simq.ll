; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_freeze_simq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_freeze_simq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32 }

@VTSCSI_REQUEST = common dso_local global i32 0, align 4
@VTSCSI_FROZEN_NO_REQUESTS = common dso_local global i32 0, align 4
@VTSCSI_REQUEST_VQ = common dso_local global i32 0, align 4
@VTSCSI_FROZEN_REQUEST_VQ_FULL = common dso_local global i32 0, align 4
@VTSCSI_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SIMQ frozen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, i32)* @vtscsi_freeze_simq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_freeze_simq(%struct.vtscsi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @VTSCSI_REQUEST, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VTSCSI_FROZEN_NO_REQUESTS, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32, i32* @VTSCSI_FROZEN_NO_REQUESTS, align 4
  %22 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %13, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VTSCSI_REQUEST_VQ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VTSCSI_FROZEN_REQUEST_VQ_FULL, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @VTSCSI_FROZEN_REQUEST_VQ_FULL, align 4
  %40 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %41 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %31, %26
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %54 = load i32, i32* @VTSCSI_INFO, align 4
  %55 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %53, i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %57 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xpt_freeze_simq(i32 %58, i32 1)
  br label %60

60:                                               ; preds = %52, %47, %44
  ret void
}

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
