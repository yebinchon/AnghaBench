; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_watchdog(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %4 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %4, i32 0, i32 1
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %8 = call i32 @STE_LOCK_ASSERT(%struct.ste_softc* %7)
  %9 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  br label %47

20:                                               ; preds = %13
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %23 = call i32 @if_inc_counter(%struct.ifnet* %21, i32 %22, i32 1)
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = call i32 @if_printf(%struct.ifnet* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %27 = call i32 @ste_txeof(%struct.ste_softc* %26)
  %28 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %29 = call i32 @ste_txeoc(%struct.ste_softc* %28)
  %30 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %31 = call i32 @ste_rxeof(%struct.ste_softc* %30, i32 -1)
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %39 = call i32 @ste_init_locked(%struct.ste_softc* %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = call i32 @IFQ_DRV_IS_EMPTY(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %20
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = call i32 @ste_start_locked(%struct.ifnet* %45)
  br label %47

47:                                               ; preds = %19, %44, %20
  ret void
}

declare dso_local i32 @STE_LOCK_ASSERT(%struct.ste_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @ste_txeof(%struct.ste_softc*) #1

declare dso_local i32 @ste_txeoc(%struct.ste_softc*) #1

declare dso_local i32 @ste_rxeof(%struct.ste_softc*, i32) #1

declare dso_local i32 @ste_init_locked(%struct.ste_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @ste_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
