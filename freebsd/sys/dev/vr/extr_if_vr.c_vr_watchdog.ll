; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i64, i32, %struct.ifnet*, %struct.TYPE_2__ }
%struct.ifnet = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@VR_F_LINK = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"watchdog timeout (missed link)\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vr_softc*)* @vr_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_watchdog(%struct.vr_softc* %0) #0 {
  %2 = alloca %struct.vr_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.vr_softc* %0, %struct.vr_softc** %2, align 8
  %4 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %5 = call i32 @VR_LOCK_ASSERT(%struct.vr_softc* %4)
  %6 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %77

17:                                               ; preds = %10
  %18 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %18, i32 0, i32 2
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %22 = call i32 @vr_txeof(%struct.vr_softc* %21)
  %23 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %24 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %77

29:                                               ; preds = %17
  %30 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %31 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VR_F_LINK, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load i64, i64* @bootverbose, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %41 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %40, i32 0, i32 2
  %42 = load %struct.ifnet*, %struct.ifnet** %41, align 8
  %43 = call i32 @if_printf(%struct.ifnet* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %47 = call i32 @if_inc_counter(%struct.ifnet* %45, i32 %46, i32 1)
  %48 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %55 = call i32 @vr_init_locked(%struct.vr_softc* %54)
  br label %77

56:                                               ; preds = %29
  %57 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %58 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %59 = call i32 @if_inc_counter(%struct.ifnet* %57, i32 %58, i32 1)
  %60 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %61 = call i32 @if_printf(%struct.ifnet* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %69 = call i32 @vr_init_locked(%struct.vr_softc* %68)
  %70 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = call i32 @IFQ_DRV_IS_EMPTY(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %56
  %75 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %76 = call i32 @vr_start_locked(%struct.ifnet* %75)
  br label %77

77:                                               ; preds = %16, %28, %44, %74, %56
  ret void
}

declare dso_local i32 @VR_LOCK_ASSERT(%struct.vr_softc*) #1

declare dso_local i32 @vr_txeof(%struct.vr_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @vr_init_locked(%struct.vr_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @vr_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
