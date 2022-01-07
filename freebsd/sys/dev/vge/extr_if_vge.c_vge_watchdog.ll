; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i64, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@VGE_RX_DESC_CNT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vge_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vge_softc*
  store %struct.vge_softc* %6, %struct.vge_softc** %3, align 8
  %7 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %8 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %7)
  %9 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %10 = call i32 @vge_stats_update(%struct.vge_softc* %9)
  %11 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %11, i32 0, i32 2
  %13 = load i32, i32* @hz, align 4
  %14 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %15 = call i32 @callout_reset(i32* %12, i32 %13, void (i8*)* @vge_watchdog, %struct.vge_softc* %14)
  %16 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %1
  br label %49

27:                                               ; preds = %20
  %28 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %29 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %28, i32 0, i32 1
  %30 = load %struct.ifnet*, %struct.ifnet** %29, align 8
  store %struct.ifnet* %30, %struct.ifnet** %4, align 8
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = call i32 @if_printf(%struct.ifnet* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %35 = call i32 @if_inc_counter(%struct.ifnet* %33, i32 %34, i32 1)
  %36 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %37 = call i32 @vge_txeof(%struct.vge_softc* %36)
  %38 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %39 = load i32, i32* @VGE_RX_DESC_CNT, align 4
  %40 = call i32 @vge_rxeof(%struct.vge_softc* %38, i32 %39)
  %41 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %48 = call i32 @vge_init_locked(%struct.vge_softc* %47)
  br label %49

49:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @vge_stats_update(%struct.vge_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.vge_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @vge_txeof(%struct.vge_softc*) #1

declare dso_local i32 @vge_rxeof(%struct.vge_softc*, i32) #1

declare dso_local i32 @vge_init_locked(%struct.vge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
