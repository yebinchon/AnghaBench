; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_spu_setdelay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_spu_setdelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__, %struct.bwn_softc* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.bwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@BWN_PHYTYPE_A = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_SHARED_SPU_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_spu_setdelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_spu_setdelay(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 1
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  store %struct.bwn_softc* %10, %struct.bwn_softc** %5, align 8
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %12 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %11, i32 0, i32 0
  store %struct.ieee80211com* %12, %struct.ieee80211com** %6, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BWN_PHYTYPE_A, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 3700, i32 1050
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 500, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %32 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 8272
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %38 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @max(i32 %43, i32 2400)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %36, %30
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %47 = load i32, i32* @BWN_SHARED, align 4
  %48 = load i32, i32* @BWN_SHARED_SPU_WAKEUP, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %46, i32 %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
