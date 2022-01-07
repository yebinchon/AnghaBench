; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_hcb = type { i32, i32, %union.ccb* }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.pvscsi_softc* }
%struct.pvscsi_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Command timed out hcb=%p ccb=%p.\0A\00", align 1
@PVSCSI_ABORT_TIMEOUT = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@PVSCSI_RESET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pvscsi_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pvscsi_hcb*, align 8
  %4 = alloca %struct.pvscsi_softc*, align 8
  %5 = alloca %union.ccb*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.pvscsi_hcb*
  store %struct.pvscsi_hcb* %7, %struct.pvscsi_hcb** %3, align 8
  %8 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %9 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %8, i32 0, i32 2
  %10 = load %union.ccb*, %union.ccb** %9, align 8
  store %union.ccb* %10, %union.ccb** %5, align 8
  %11 = load %union.ccb*, %union.ccb** %5, align 8
  %12 = icmp eq %union.ccb* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %86

14:                                               ; preds = %1
  %15 = load %union.ccb*, %union.ccb** %5, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %17, align 8
  store %struct.pvscsi_softc* %18, %struct.pvscsi_softc** %4, align 8
  %19 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %19, i32 0, i32 1
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @mtx_assert(i32* %20, i32 %21)
  %23 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %27 = load %union.ccb*, %union.ccb** %5, align 8
  %28 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.pvscsi_hcb* %26, %union.ccb* %27)
  %29 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %30 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %86 [
    i32 128, label %32
    i32 131, label %49
    i32 129, label %67
    i32 130, label %81
  ]

32:                                               ; preds = %14
  %33 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %34 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %33, i32 0, i32 0
  store i32 131, i32* %34, align 8
  %35 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %36 = load %union.ccb*, %union.ccb** %5, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %union.ccb*, %union.ccb** %5, align 8
  %41 = call i32 @pvscsi_abort(%struct.pvscsi_softc* %35, i32 %39, %union.ccb* %40)
  %42 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %43 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %42, i32 0, i32 1
  %44 = load i32, i32* @PVSCSI_ABORT_TIMEOUT, align 4
  %45 = load i32, i32* @SBT_1S, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %48 = call i32 @callout_reset_sbt(i32* %43, i32 %46, i32 0, void (i8*)* @pvscsi_timeout, %struct.pvscsi_hcb* %47, i32 0)
  br label %86

49:                                               ; preds = %14
  %50 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %51 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %50, i32 0, i32 0
  store i32 129, i32* %51, align 8
  %52 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %53 = call i32 @pvscsi_freeze(%struct.pvscsi_softc* %52)
  %54 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %55 = load %union.ccb*, %union.ccb** %5, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pvscsi_device_reset(%struct.pvscsi_softc* %54, i32 %58)
  %60 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %61 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %60, i32 0, i32 1
  %62 = load i32, i32* @PVSCSI_RESET_TIMEOUT, align 4
  %63 = load i32, i32* @SBT_1S, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %66 = call i32 @callout_reset_sbt(i32* %61, i32 %64, i32 0, void (i8*)* @pvscsi_timeout, %struct.pvscsi_hcb* %65, i32 0)
  br label %86

67:                                               ; preds = %14
  %68 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %69 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %68, i32 0, i32 0
  store i32 130, i32* %69, align 8
  %70 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %71 = call i32 @pvscsi_freeze(%struct.pvscsi_softc* %70)
  %72 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %73 = call i32 @pvscsi_bus_reset(%struct.pvscsi_softc* %72)
  %74 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %75 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %74, i32 0, i32 1
  %76 = load i32, i32* @PVSCSI_RESET_TIMEOUT, align 4
  %77 = load i32, i32* @SBT_1S, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %80 = call i32 @callout_reset_sbt(i32* %75, i32 %78, i32 0, void (i8*)* @pvscsi_timeout, %struct.pvscsi_hcb* %79, i32 0)
  br label %86

81:                                               ; preds = %14
  %82 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %83 = call i32 @pvscsi_freeze(%struct.pvscsi_softc* %82)
  %84 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %4, align 8
  %85 = call i32 @pvscsi_adapter_reset(%struct.pvscsi_softc* %84)
  br label %86

86:                                               ; preds = %13, %14, %81, %67, %49, %32
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, %struct.pvscsi_hcb*, %union.ccb*) #1

declare dso_local i32 @pvscsi_abort(%struct.pvscsi_softc*, i32, %union.ccb*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, void (i8*)*, %struct.pvscsi_hcb*, i32) #1

declare dso_local i32 @pvscsi_freeze(%struct.pvscsi_softc*) #1

declare dso_local i32 @pvscsi_device_reset(%struct.pvscsi_softc*, i32) #1

declare dso_local i32 @pvscsi_bus_reset(%struct.pvscsi_softc*) #1

declare dso_local i32 @pvscsi_adapter_reset(%struct.pvscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
