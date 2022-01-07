; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_fatal_error_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_fatal_error_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i64, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"firmware error\0A\00", align 1
@IWI_FLAG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*)* @iwi_fatal_error_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_fatal_error_intr(%struct.iwi_softc* %0) #0 {
  %2 = alloca %struct.iwi_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %2, align 8
  %5 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %5, i32 0, i32 4
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 0
  %9 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %8)
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %4, align 8
  %10 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %11 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %15 = icmp ne %struct.ieee80211vap* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %18 = call i32 @ieee80211_cancel_scan(%struct.ieee80211vap* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %21 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %22 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %21, i32 0, i32 2
  %23 = call i32 @ieee80211_runtask(%struct.ieee80211com* %20, i32* %22)
  %24 = load i32, i32* @IWI_FLAG_BUSY, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %27 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %31 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %33 = call i32 @wakeup(%struct.iwi_softc* %32)
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ieee80211_cancel_scan(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @wakeup(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
