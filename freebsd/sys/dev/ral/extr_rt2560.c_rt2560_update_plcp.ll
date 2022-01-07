; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_update_plcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_update_plcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@RT2560_PLCP1MCSR = common dso_local global i32 0, align 4
@IEEE80211_F_SHPREAMBLE = common dso_local global i32 0, align 4
@RT2560_PLCP2MCSR = common dso_local global i32 0, align 4
@RT2560_PLCP5p5MCSR = common dso_local global i32 0, align 4
@RT2560_PLCP11MCSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"updating PLCP for %s preamble\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*)* @rt2560_update_plcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_update_plcp(%struct.rt2560_softc* %0) #0 {
  %2 = alloca %struct.rt2560_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %2, align 8
  %4 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %4, i32 0, i32 0
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %7 = load i32, i32* @RT2560_PLCP1MCSR, align 4
  %8 = call i32 @RAL_WRITE(%struct.rt2560_softc* %6, i32 %7, i32 7341056)
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %17 = load i32, i32* @RT2560_PLCP2MCSR, align 4
  %18 = call i32 @RAL_WRITE(%struct.rt2560_softc* %16, i32 %17, i32 3671041)
  %19 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %20 = load i32, i32* @RT2560_PLCP5p5MCSR, align 4
  %21 = call i32 @RAL_WRITE(%struct.rt2560_softc* %19, i32 %20, i32 1377282)
  %22 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %23 = load i32, i32* @RT2560_PLCP11MCSR, align 4
  %24 = call i32 @RAL_WRITE(%struct.rt2560_softc* %22, i32 %23, i32 754691)
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %27 = load i32, i32* @RT2560_PLCP2MCSR, align 4
  %28 = call i32 @RAL_WRITE(%struct.rt2560_softc* %26, i32 %27, i32 3671049)
  %29 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %30 = load i32, i32* @RT2560_PLCP5p5MCSR, align 4
  %31 = call i32 @RAL_WRITE(%struct.rt2560_softc* %29, i32 %30, i32 1377290)
  %32 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %33 = load i32, i32* @RT2560_PLCP11MCSR, align 4
  %34 = call i32 @RAL_WRITE(%struct.rt2560_softc* %32, i32 %33, i32 754699)
  br label %35

35:                                               ; preds = %25, %15
  %36 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 @DPRINTF(%struct.rt2560_softc* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %44)
  ret void
}

declare dso_local i32 @RAL_WRITE(%struct.rt2560_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.rt2560_softc*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
