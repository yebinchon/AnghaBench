; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i64, %struct.ifnet*, i64 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.an_softc*)* @an_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_watchdog(%struct.an_softc* %0) #0 {
  %2 = alloca %struct.an_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.an_softc* %0, %struct.an_softc** %2, align 8
  %4 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %5 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %4)
  %6 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %7 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %13 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %12, i32 0, i32 1
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %3, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = call i32 @if_printf(%struct.ifnet* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %18 = call i32 @an_reset(%struct.an_softc* %17)
  %19 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %20 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %25 = call i32 @an_init_mpi350_desc(%struct.an_softc* %24)
  br label %26

26:                                               ; preds = %23, %11
  %27 = load %struct.an_softc*, %struct.an_softc** %2, align 8
  %28 = call i32 @an_init_locked(%struct.an_softc* %27)
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %31 = call i32 @if_inc_counter(%struct.ifnet* %29, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @an_reset(%struct.an_softc*) #1

declare dso_local i32 @an_init_mpi350_desc(%struct.an_softc*) #1

declare dso_local i32 @an_init_locked(%struct.an_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
