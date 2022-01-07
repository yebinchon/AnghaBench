; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i64, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@hz = common dso_local global i32 0, align 4
@TI_FLAG_DEBUGING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"watchdog timeout -- resetting\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ti_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ti_softc*
  store %struct.ti_softc* %6, %struct.ti_softc** %3, align 8
  %7 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %8 = call i32 @TI_LOCK_ASSERT(%struct.ti_softc* %7)
  %9 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %9, i32 0, i32 3
  %11 = load i32, i32* @hz, align 4
  %12 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %13 = call i32 @callout_reset(i32* %10, i32 %11, void (i8*)* @ti_watchdog, %struct.ti_softc* %12)
  %14 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  br label %50

25:                                               ; preds = %18
  %26 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TI_FLAG_DEBUGING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %50

33:                                               ; preds = %25
  %34 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %34, i32 0, i32 2
  %36 = load %struct.ifnet*, %struct.ifnet** %35, align 8
  store %struct.ifnet* %36, %struct.ifnet** %4, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = call i32 @if_printf(%struct.ifnet* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %46 = call i32 @ti_init_locked(%struct.ti_softc* %45)
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %49 = call i32 @if_inc_counter(%struct.ifnet* %47, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %33, %32, %24
  ret void
}

declare dso_local i32 @TI_LOCK_ASSERT(%struct.ti_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ti_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @ti_init_locked(%struct.ti_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
