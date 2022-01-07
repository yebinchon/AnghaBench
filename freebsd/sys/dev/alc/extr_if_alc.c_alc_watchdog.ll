; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@ALC_FLAG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"watchdog timeout (lost link)\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"watchdog timeout -- resetting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_watchdog(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %4 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %5 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %4)
  %6 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %66

17:                                               ; preds = %10
  %18 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %18, i32 0, i32 2
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ALC_FLAG_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %29 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %28, i32 0, i32 2
  %30 = load %struct.ifnet*, %struct.ifnet** %29, align 8
  %31 = call i32 @if_printf(%struct.ifnet* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %34 = call i32 @if_inc_counter(%struct.ifnet* %32, i32 %33, i32 1)
  %35 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %42 = call i32 @alc_init_locked(%struct.alc_softc* %41)
  br label %66

43:                                               ; preds = %17
  %44 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %45 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %44, i32 0, i32 2
  %46 = load %struct.ifnet*, %struct.ifnet** %45, align 8
  %47 = call i32 @if_printf(%struct.ifnet* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %49 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %50 = call i32 @if_inc_counter(%struct.ifnet* %48, i32 %49, i32 1)
  %51 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %58 = call i32 @alc_init_locked(%struct.alc_softc* %57)
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = call i32 @IFQ_DRV_IS_EMPTY(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %43
  %64 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %65 = call i32 @alc_start_locked(%struct.ifnet* %64)
  br label %66

66:                                               ; preds = %16, %27, %63, %43
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @alc_init_locked(%struct.alc_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @alc_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
