; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@RT2560_F_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rt2560_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rt2560_softc*
  store %struct.rt2560_softc* %6, %struct.rt2560_softc** %3, align 8
  %7 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %7, i32 0, i32 1
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %10 = call i32 @RAL_LOCK(%struct.rt2560_softc* %9)
  %11 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %12 = call i32 @rt2560_init_locked(%struct.rt2560_softc* %11)
  %13 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %14 = call i32 @RAL_UNLOCK(%struct.rt2560_softc* %13)
  %15 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %16 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RT2560_F_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %23 = call i32 @ieee80211_start_all(%struct.ieee80211com* %22)
  br label %24

24:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @RAL_LOCK(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_init_locked(%struct.rt2560_softc*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.rt2560_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
