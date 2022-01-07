; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i64, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32 }

@hz = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dc_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.dc_softc*
  store %struct.dc_softc* %6, %struct.dc_softc** %3, align 8
  %7 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %8 = call i32 @DC_LOCK_ASSERT(%struct.dc_softc* %7)
  %9 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13, %1
  %20 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %20, i32 0, i32 3
  %22 = load i32, i32* @hz, align 4
  %23 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %24 = call i32 @callout_reset(i32* %21, i32 %22, void (i8*)* @dc_watchdog, %struct.dc_softc* %23)
  br label %51

25:                                               ; preds = %13
  %26 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %26, i32 0, i32 2
  %28 = load %struct.ifnet*, %struct.ifnet** %27, align 8
  store %struct.ifnet* %28, %struct.ifnet** %4, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %31 = call i32 @if_inc_counter(%struct.ifnet* %29, i32 %30, i32 1)
  %32 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %43 = call i32 @dc_init_locked(%struct.dc_softc* %42)
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = call i32 @IFQ_DRV_IS_EMPTY(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %25
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = call i32 @dc_start_locked(%struct.ifnet* %49)
  br label %51

51:                                               ; preds = %19, %48, %25
  ret void
}

declare dso_local i32 @DC_LOCK_ASSERT(%struct.dc_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.dc_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @dc_init_locked(%struct.dc_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @dc_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
