; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32 }
%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@RUN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_start(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %5 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @RUN_LOCK_ASSERT(%struct.run_softc* %5, i32 %6)
  %8 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %9 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RUN_RUNNING, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %37, %15
  %17 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %18 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %17, i32 0, i32 1
  %19 = call %struct.mbuf* @mbufq_dequeue(i32* %18)
  store %struct.mbuf* %19, %struct.mbuf** %4, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %26, %struct.ieee80211_node** %3, align 8
  %27 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %30 = call i64 @run_tx(%struct.run_softc* %27, %struct.mbuf* %28, %struct.ieee80211_node* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %34 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %33, i32 0, i32 1
  %35 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %36 = call i32 @mbufq_prepend(i32* %34, %struct.mbuf* %35)
  br label %38

37:                                               ; preds = %21
  br label %16

38:                                               ; preds = %14, %32, %16
  ret void
}

declare dso_local i32 @RUN_LOCK_ASSERT(%struct.run_softc*, i32) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i64 @run_tx(%struct.run_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @mbufq_prepend(i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
