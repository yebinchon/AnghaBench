; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { i64, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@hz = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@PHY_BMSR = common dso_local global i32 0, align 4
@PHY_BMSR_LINKSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"no carrier - transceiver cable problem?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @my_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.my_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.my_softc*
  store %struct.my_softc* %6, %struct.my_softc** %3, align 8
  %7 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %8 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %7)
  %9 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %10 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %9, i32 0, i32 2
  %11 = load i32, i32* @hz, align 4
  %12 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %13 = call i32 @callout_reset(i32* %10, i32 %11, void (i8*)* @my_watchdog, %struct.my_softc* %12)
  %14 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %15 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %20 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  br label %57

25:                                               ; preds = %18
  %26 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %27 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %26, i32 0, i32 1
  %28 = load %struct.ifnet*, %struct.ifnet** %27, align 8
  store %struct.ifnet* %28, %struct.ifnet** %4, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %31 = call i32 @if_inc_counter(%struct.ifnet* %29, i32 %30, i32 1)
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = call i32 @if_printf(%struct.ifnet* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %35 = load i32, i32* @PHY_BMSR, align 4
  %36 = call i32 @my_phy_readreg(%struct.my_softc* %34, i32 %35)
  %37 = load i32, i32* @PHY_BMSR_LINKSTAT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = call i32 @if_printf(%struct.ifnet* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %25
  %44 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %45 = call i32 @my_stop(%struct.my_softc* %44)
  %46 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %47 = call i32 @my_reset(%struct.my_softc* %46)
  %48 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %49 = call i32 @my_init_locked(%struct.my_softc* %48)
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = call i32 @IFQ_DRV_IS_EMPTY(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = call i32 @my_start_locked(%struct.ifnet* %55)
  br label %57

57:                                               ; preds = %24, %54, %43
  ret void
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.my_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @my_phy_readreg(%struct.my_softc*, i32) #1

declare dso_local i32 @my_stop(%struct.my_softc*) #1

declare dso_local i32 @my_reset(%struct.my_softc*) #1

declare dso_local i32 @my_init_locked(%struct.my_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @my_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
