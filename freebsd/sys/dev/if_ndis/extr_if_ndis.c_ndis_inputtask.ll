; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_inputtask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_inputtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.ndis_softc = type { i64, i32, %struct.ifnet*, %struct.ieee80211com, i32 }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i32 }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i32, i32 (%struct.ieee80211vap*, i32, %struct.mbuf*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @ndis_inputtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndis_inputtask(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ndis_softc*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ieee80211vap*, align 8
  %11 = alloca %struct.ifnet*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ndis_softc*
  store %struct.ndis_softc* %13, %struct.ndis_softc** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %18 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %17, i32 0, i32 1
  %19 = call i32 @KeAcquireSpinLock(i32* %18, i32* %8)
  br label %20

20:                                               ; preds = %63, %2
  %21 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %22 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %21, i32 0, i32 4
  %23 = call %struct.mbuf* @mbufq_dequeue(i32* %22)
  store %struct.mbuf* %23, %struct.mbuf** %7, align 8
  %24 = icmp ne %struct.mbuf* %23, null
  br i1 %24, label %25, label %67

25:                                               ; preds = %20
  %26 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %27 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @KeReleaseSpinLock(i32* %27, i32 %28)
  %30 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %25
  %35 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %36 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %35, i32 0, i32 3
  store %struct.ieee80211com* %36, %struct.ieee80211com** %9, align 8
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  %39 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %38)
  store %struct.ieee80211vap* %39, %struct.ieee80211vap** %10, align 8
  %40 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %41 = icmp ne %struct.ieee80211vap* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 1
  %45 = load i32 (%struct.ieee80211vap*, i32, %struct.mbuf*)*, i32 (%struct.ieee80211vap*, i32, %struct.mbuf*)** %44, align 8
  %46 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %48 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %51 = call i32 %45(%struct.ieee80211vap* %46, i32 %49, %struct.mbuf* %50)
  br label %52

52:                                               ; preds = %42, %34
  br label %63

53:                                               ; preds = %25
  %54 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %55 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %54, i32 0, i32 2
  %56 = load %struct.ifnet*, %struct.ifnet** %55, align 8
  store %struct.ifnet* %56, %struct.ifnet** %11, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %58, align 8
  %60 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %62 = call i32 %59(%struct.ifnet* %60, %struct.mbuf* %61)
  br label %63

63:                                               ; preds = %53, %52
  %64 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %65 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %64, i32 0, i32 1
  %66 = call i32 @KeAcquireSpinLock(i32* %65, i32* %8)
  br label %20

67:                                               ; preds = %20
  %68 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %69 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @KeReleaseSpinLock(i32* %69, i32 %70)
  ret void
}

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
