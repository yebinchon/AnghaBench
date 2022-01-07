; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_reset_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32, i32 }

@vtscsi_bus_reset_disable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"bus reset disabled\0A\00", align 1
@VTSCSI_FLAG_RESET = common dso_local global i32 0, align 4
@VTSCSI_REQUEST = common dso_local global i32 0, align 4
@VTSCSI_REQUEST_VQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"reinitialization failed, stopping device...\0A\00", align 1
@AC_BUS_RESET = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*)* @vtscsi_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_reset_bus(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  %5 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %6 = call i32 @VTSCSI_LOCK_OWNED(%struct.vtscsi_softc* %5)
  %7 = load i64, i64* @vtscsi_bus_reset_disable, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load i32, i32* @VTSCSI_FLAG_RESET, align 4
  %16 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %21 = call i32 @vtscsi_stop(%struct.vtscsi_softc* %20)
  %22 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %23 = call i32 @vtscsi_complete_vqs_locked(%struct.vtscsi_softc* %22)
  %24 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %25 = call i32 @vtscsi_drain_vqs(%struct.vtscsi_softc* %24)
  %26 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %27 = load i32, i32* @VTSCSI_REQUEST, align 4
  %28 = load i32, i32* @VTSCSI_REQUEST_VQ, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @vtscsi_thaw_simq(%struct.vtscsi_softc* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %14
  %33 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xpt_release_simq(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %32, %14
  %38 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %39 = call i32 @vtscsi_reinit(%struct.vtscsi_softc* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %48 = call i32 @vtscsi_stop(%struct.vtscsi_softc* %47)
  br label %55

49:                                               ; preds = %37
  %50 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %51 = load i32, i32* @AC_BUS_RESET, align 4
  %52 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %53 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %54 = call i32 @vtscsi_announce(%struct.vtscsi_softc* %50, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i32, i32* @VTSCSI_FLAG_RESET, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %59 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @VTSCSI_LOCK_OWNED(%struct.vtscsi_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vtscsi_stop(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_complete_vqs_locked(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_drain_vqs(%struct.vtscsi_softc*) #1

declare dso_local i64 @vtscsi_thaw_simq(%struct.vtscsi_softc*, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @vtscsi_reinit(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_announce(%struct.vtscsi_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
