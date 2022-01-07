; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i64, i64, %struct.wi_softc* }
%struct.wi_softc = type { i32, i64 }

@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@WI_FLAGS_RUNNING = common dso_local global i32 0, align 4
@WI_FLAGS_PROMISC = common dso_local global i32 0, align 4
@WI_RID_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @wi_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wi_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.wi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 3
  %7 = load %struct.wi_softc*, %struct.wi_softc** %6, align 8
  store %struct.wi_softc* %7, %struct.wi_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %9 = call i32 @WI_LOCK(%struct.wi_softc* %8)
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %1
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %14
  %21 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WI_FLAGS_RUNNING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %20
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WI_FLAGS_PROMISC, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %41 = load i32, i32* @WI_RID_PROMISC, align 4
  %42 = call i32 @wi_write_val(%struct.wi_softc* %40, i32 %41, i32 1)
  %43 = load i32, i32* @WI_FLAGS_PROMISC, align 4
  %44 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %45 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %74

48:                                               ; preds = %32, %27
  %49 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %55 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @WI_FLAGS_PROMISC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %62 = load i32, i32* @WI_RID_PROMISC, align 4
  %63 = call i32 @wi_write_val(%struct.wi_softc* %61, i32 %62, i32 0)
  %64 = load i32, i32* @WI_FLAGS_PROMISC, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %67 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %73

70:                                               ; preds = %53, %48
  %71 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %72 = call i32 @wi_init(%struct.wi_softc* %71)
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %60
  br label %74

74:                                               ; preds = %73, %39
  br label %78

75:                                               ; preds = %20, %14
  %76 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %77 = call i32 @wi_init(%struct.wi_softc* %76)
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %74
  br label %92

79:                                               ; preds = %1
  %80 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %81 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @WI_FLAGS_RUNNING, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %88 = call i32 @wi_stop(%struct.wi_softc* %87, i32 1)
  %89 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %90 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %79
  br label %92

92:                                               ; preds = %91, %78
  %93 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %94 = call i32 @WI_UNLOCK(%struct.wi_softc* %93)
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %99 = call i32 @ieee80211_start_all(%struct.ieee80211com* %98)
  br label %100

100:                                              ; preds = %97, %92
  ret void
}

declare dso_local i32 @WI_LOCK(%struct.wi_softc*) #1

declare dso_local i32 @wi_write_val(%struct.wi_softc*, i32, i32) #1

declare dso_local i32 @wi_init(%struct.wi_softc*) #1

declare dso_local i32 @wi_stop(%struct.wi_softc*, i32) #1

declare dso_local i32 @WI_UNLOCK(%struct.wi_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
