; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*)* @tsec_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_watchdog(%struct.tsec_softc* %0) #0 {
  %2 = alloca %struct.tsec_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.tsec_softc* %0, %struct.tsec_softc** %2, align 8
  %4 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %5 = call i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc* %4)
  %6 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %7 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %12 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %30

17:                                               ; preds = %10
  %18 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %19 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %18, i32 0, i32 1
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %23 = call i32 @if_inc_counter(%struct.ifnet* %21, i32 %22, i32 1)
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = call i32 @if_printf(%struct.ifnet* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %27 = call i32 @tsec_stop(%struct.tsec_softc* %26)
  %28 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %29 = call i32 @tsec_init_locked(%struct.tsec_softc* %28)
  br label %30

30:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @tsec_stop(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_init_locked(%struct.tsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
