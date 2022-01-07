; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_tx_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_tx_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i64, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Tx watchdog timeout: resetting\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rt_tx_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_tx_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rt_softc*
  store %struct.rt_softc* %6, %struct.rt_softc** %3, align 8
  %7 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %7, i32 0, i32 4
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %23 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %28 = call i32 @if_inc_counter(%struct.ifnet* %26, i32 %27, i32 1)
  %29 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %21, %15
  %34 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %35 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %34, i32 0, i32 1
  %36 = load i32, i32* @hz, align 4
  %37 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %38 = call i32 @callout_reset(i32* %35, i32 %36, void (i8*)* @rt_tx_watchdog, %struct.rt_softc* %37)
  br label %39

39:                                               ; preds = %33, %14
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.rt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
