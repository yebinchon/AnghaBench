; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_getchannels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_getchannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8, i8*, i32, i32 }

@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@SKU_DEBUG = common dso_local global i32 0, align 4
@CTRY_DEFAULT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_softc*)* @mwl_getchannels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_getchannels(%struct.mwl_softc* %0) #0 {
  %2 = alloca %struct.mwl_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %2, align 8
  %4 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %4, i32 0, i32 0
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @memset(i32 %8, i32 0, i32 4)
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %13 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @getchannels(%struct.mwl_softc* %12, i32 %13, i64* %15, i32 %18)
  %20 = load i32, i32* @SKU_DEBUG, align 4
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @CTRY_DEFAULT, align 4
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8 73, i8* %30, align 8
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 32, i8* %35, align 1
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 32, i8* %40, align 1
  %41 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* @EIO, align 4
  br label %48

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  ret i32 %49
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @getchannels(%struct.mwl_softc*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
