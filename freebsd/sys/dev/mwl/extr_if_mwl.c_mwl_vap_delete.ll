; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_vap_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_vap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mwl_softc* }
%struct.mwl_softc = type { i32, i64, i32, i32, i32, %struct.mwl_hal* }
%struct.mwl_hal = type { i32 }
%struct.mwl_vap = type { %struct.mwl_hal_vap* }
%struct.mwl_hal_vap = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no hal vap handle\00", align 1
@M_80211_VAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @mwl_vap_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_vap_delete(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.mwl_vap*, align 8
  %4 = alloca %struct.mwl_softc*, align 8
  %5 = alloca %struct.mwl_hal*, align 8
  %6 = alloca %struct.mwl_hal_vap*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %9 = call %struct.mwl_vap* @MWL_VAP(%struct.ieee80211vap* %8)
  store %struct.mwl_vap* %9, %struct.mwl_vap** %3, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mwl_softc*, %struct.mwl_softc** %13, align 8
  store %struct.mwl_softc* %14, %struct.mwl_softc** %4, align 8
  %15 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %15, i32 0, i32 5
  %17 = load %struct.mwl_hal*, %struct.mwl_hal** %16, align 8
  store %struct.mwl_hal* %17, %struct.mwl_hal** %5, align 8
  %18 = load %struct.mwl_vap*, %struct.mwl_vap** %3, align 8
  %19 = getelementptr inbounds %struct.mwl_vap, %struct.mwl_vap* %18, i32 0, i32 0
  %20 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %19, align 8
  store %struct.mwl_hal_vap* %20, %struct.mwl_hal_vap** %6, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.mwl_hal*, %struct.mwl_hal** %5, align 8
  %30 = call i32 @mwl_hal_intrset(%struct.mwl_hal* %29, i32 0)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %33 = call i32 @ieee80211_vap_detach(%struct.ieee80211vap* %32)
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %73 [
    i32 131, label %35
    i32 130, label %35
    i32 129, label %35
    i32 128, label %68
  ]

35:                                               ; preds = %31, %31, %31
  %36 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %6, align 8
  %37 = icmp ne %struct.mwl_hal_vap* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %6, align 8
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mwl_hal_delstation(%struct.mwl_hal_vap* %40, i32 %43)
  %45 = load %struct.mwl_hal_vap*, %struct.mwl_hal_vap** %6, align 8
  %46 = call i32 @mwl_hal_delvap(%struct.mwl_hal_vap* %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 131
  br i1 %48, label %52, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 130
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %35
  %53 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %54 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  br label %62

57:                                               ; preds = %49
  %58 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %59 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %64 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %65 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @reclaim_address(%struct.mwl_softc* %63, i32 %66)
  br label %74

68:                                               ; preds = %31
  %69 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  br label %74

73:                                               ; preds = %31
  br label %74

74:                                               ; preds = %73, %68, %62
  %75 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %76 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %77 = call i32 @mwl_cleartxq(%struct.mwl_softc* %75, %struct.ieee80211vap* %76)
  %78 = load %struct.mwl_vap*, %struct.mwl_vap** %3, align 8
  %79 = load i32, i32* @M_80211_VAP, align 4
  %80 = call i32 @free(%struct.mwl_vap* %78, i32 %79)
  %81 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %82 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.mwl_hal*, %struct.mwl_hal** %5, align 8
  %87 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %88 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mwl_hal_intrset(%struct.mwl_hal* %86, i32 %89)
  br label %91

91:                                               ; preds = %85, %74
  ret void
}

declare dso_local %struct.mwl_vap* @MWL_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @mwl_hal_intrset(%struct.mwl_hal*, i32) #1

declare dso_local i32 @ieee80211_vap_detach(%struct.ieee80211vap*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mwl_hal_delstation(%struct.mwl_hal_vap*, i32) #1

declare dso_local i32 @mwl_hal_delvap(%struct.mwl_hal_vap*) #1

declare dso_local i32 @reclaim_address(%struct.mwl_softc*, i32) #1

declare dso_local i32 @mwl_cleartxq(%struct.mwl_softc*, %struct.ieee80211vap*) #1

declare dso_local i32 @free(%struct.mwl_vap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
