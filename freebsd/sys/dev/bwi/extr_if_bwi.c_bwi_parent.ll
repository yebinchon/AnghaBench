; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i64, %struct.bwi_softc* }
%struct.bwi_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bwi_mac = type { i32 }

@BWI_REGWIN_T_MAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"current regwin type %d\00", align 1
@BWI_F_PROMISC = common dso_local global i32 0, align 4
@BWI_F_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @bwi_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_mac*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 2
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  store %struct.bwi_softc* %9, %struct.bwi_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %11 = call i32 @BWI_LOCK(%struct.bwi_softc* %10)
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %1
  store i32 -1, i32* %6, align 4
  %17 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BWI_REGWIN_T_MAC, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %24, i8* %30)
  %32 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = bitcast %struct.TYPE_2__* %34 to %struct.bwi_mac*
  store %struct.bwi_mac* %35, %struct.bwi_mac** %5, align 8
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %16
  %41 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BWI_F_PROMISC, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  %48 = load i32, i32* @BWI_F_PROMISC, align 4
  %49 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %73

53:                                               ; preds = %40, %16
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %60 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BWI_F_PROMISC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  %66 = load i32, i32* @BWI_F_PROMISC, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %69 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %58, %53
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* %6, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @bwi_mac_set_promisc(%struct.bwi_mac* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %1
  %82 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %83 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %88 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BWI_F_RUNNING, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %95 = call i32 @bwi_init_statechg(%struct.bwi_softc* %94, i32 1)
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %93, %86
  br label %108

97:                                               ; preds = %81
  %98 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %99 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @BWI_F_RUNNING, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %106 = call i32 @bwi_stop_locked(%struct.bwi_softc* %105, i32 1)
  br label %107

107:                                              ; preds = %104, %97
  br label %108

108:                                              ; preds = %107, %96
  %109 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %110 = call i32 @BWI_UNLOCK(%struct.bwi_softc* %109)
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %115 = call i32 @ieee80211_start_all(%struct.ieee80211com* %114)
  br label %116

116:                                              ; preds = %113, %108
  ret void
}

declare dso_local i32 @BWI_LOCK(%struct.bwi_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_mac_set_promisc(%struct.bwi_mac*, i32) #1

declare dso_local i32 @bwi_init_statechg(%struct.bwi_softc*, i32) #1

declare dso_local i32 @bwi_stop_locked(%struct.bwi_softc*, i32) #1

declare dso_local i32 @BWI_UNLOCK(%struct.bwi_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
