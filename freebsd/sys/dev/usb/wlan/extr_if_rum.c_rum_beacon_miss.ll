; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_beacon_miss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_beacon_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.rum_softc* }
%struct.rum_softc = type { i32, i64 }
%struct.rum_vap = type { i32 (%struct.ieee80211vap.0*)* }
%struct.ieee80211vap.0 = type opaque

@ticks = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"dropping 'sleeping' bit, device must be awake now\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @rum_beacon_miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_beacon_miss(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.rum_softc*, align 8
  %5 = alloca %struct.rum_vap*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  store %struct.ieee80211com* %9, %struct.ieee80211com** %3, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load %struct.rum_softc*, %struct.rum_softc** %11, align 8
  store %struct.rum_softc* %12, %struct.rum_softc** %4, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %14 = call %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap* %13)
  store %struct.rum_vap* %14, %struct.rum_vap** %5, align 8
  %15 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %16 = call i32 @RUM_LOCK(%struct.rum_softc* %15)
  %17 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %18 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %23 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ticks, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call i32 @DPRINTFN(i32 12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %30 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %21, %1
  %32 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %33 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  %35 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %36 = call i32 @RUM_UNLOCK(%struct.rum_softc* %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = load %struct.rum_vap*, %struct.rum_vap** %5, align 8
  %41 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %40, i32 0, i32 0
  %42 = load i32 (%struct.ieee80211vap.0*)*, i32 (%struct.ieee80211vap.0*)** %41, align 8
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %44 = bitcast %struct.ieee80211vap* %43 to %struct.ieee80211vap.0*
  %45 = call i32 %42(%struct.ieee80211vap.0* %44)
  br label %46

46:                                               ; preds = %39, %31
  ret void
}

declare dso_local %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
