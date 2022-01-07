; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i64, i32, %struct.ifnet*, %struct.TYPE_2__ }
%struct.ifnet = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@JME_FLAG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"watchdog timeout (missed link)\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"watchdog timeout (missed Tx interrupts) -- recovering\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_watchdog(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %4 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %5 = call i32 @JME_LOCK_ASSERT(%struct.jme_softc* %4)
  %6 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %7 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %12 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %87

17:                                               ; preds = %10
  %18 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %19 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %18, i32 0, i32 2
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %22 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @JME_FLAG_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %29 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %28, i32 0, i32 2
  %30 = load %struct.ifnet*, %struct.ifnet** %29, align 8
  %31 = call i32 @if_printf(%struct.ifnet* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
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
  %41 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %42 = call i32 @jme_init_locked(%struct.jme_softc* %41)
  br label %87

43:                                               ; preds = %17
  %44 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %45 = call i32 @jme_txeof(%struct.jme_softc* %44)
  %46 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %47 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %53 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %52, i32 0, i32 2
  %54 = load %struct.ifnet*, %struct.ifnet** %53, align 8
  %55 = call i32 @if_printf(%struct.ifnet* %54, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 0
  %58 = call i32 @IFQ_DRV_IS_EMPTY(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %62 = call i32 @jme_start_locked(%struct.ifnet* %61)
  br label %63

63:                                               ; preds = %60, %51
  br label %87

64:                                               ; preds = %43
  %65 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %66 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %65, i32 0, i32 2
  %67 = load %struct.ifnet*, %struct.ifnet** %66, align 8
  %68 = call i32 @if_printf(%struct.ifnet* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %70 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %71 = call i32 @if_inc_counter(%struct.ifnet* %69, i32 %70, i32 1)
  %72 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %79 = call i32 @jme_init_locked(%struct.jme_softc* %78)
  %80 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 0
  %82 = call i32 @IFQ_DRV_IS_EMPTY(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %64
  %85 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %86 = call i32 @jme_start_locked(%struct.ifnet* %85)
  br label %87

87:                                               ; preds = %16, %27, %63, %84, %64
  ret void
}

declare dso_local i32 @JME_LOCK_ASSERT(%struct.jme_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @jme_init_locked(%struct.jme_softc*) #1

declare dso_local i32 @jme_txeof(%struct.jme_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @jme_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
