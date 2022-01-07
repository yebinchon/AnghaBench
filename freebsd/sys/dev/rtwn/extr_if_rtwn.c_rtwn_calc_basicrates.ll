; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_calc_basicrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_calc_basicrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.rtwn_vap**, %struct.ieee80211com }
%struct.rtwn_vap = type { i64, %struct.ieee80211vap }
%struct.ieee80211vap = type { i32* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_node = type { i32 }

@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@R92C_MSR_NOLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_calc_basicrates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_calc_basicrates(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtwn_vap*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %10, i32 0, i32 1
  store %struct.ieee80211com* %11, %struct.ieee80211com** %3, align 8
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %13 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %12)
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %79

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %68, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %25 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %24, i32 0, i32 0
  %26 = load %struct.rtwn_vap**, %struct.rtwn_vap*** %25, align 8
  %27 = call i32 @nitems(%struct.rtwn_vap** %26)
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %22
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %31 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %30, i32 0, i32 0
  %32 = load %struct.rtwn_vap**, %struct.rtwn_vap*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.rtwn_vap*, %struct.rtwn_vap** %32, i64 %34
  %36 = load %struct.rtwn_vap*, %struct.rtwn_vap** %35, align 8
  store %struct.rtwn_vap* %36, %struct.rtwn_vap** %6, align 8
  %37 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %38 = icmp eq %struct.rtwn_vap* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %41 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @R92C_MSR_NOLINK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %29
  br label %68

46:                                               ; preds = %39
  %47 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %48 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %47, i32 0, i32 1
  store %struct.ieee80211vap* %48, %struct.ieee80211vap** %7, align 8
  %49 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %68

54:                                               ; preds = %46
  %55 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call %struct.ieee80211_node* @ieee80211_ref_node(i32* %57)
  store %struct.ieee80211_node* %58, %struct.ieee80211_node** %8, align 8
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %60 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %60, i32 0, i32 0
  %62 = call i32 @rtwn_get_rates(%struct.rtwn_softc* %59, i32* %61, i32* null, i32* %9, i32* null, i32 1)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %67 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %66)
  br label %68

68:                                               ; preds = %54, %53, %45
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %22

71:                                               ; preds = %22
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %79

75:                                               ; preds = %71
  %76 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @rtwn_set_basicrates(%struct.rtwn_softc* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %74, %20
  ret void
}

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local i32 @nitems(%struct.rtwn_vap**) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32*) #1

declare dso_local i32 @rtwn_get_rates(%struct.rtwn_softc*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @rtwn_set_basicrates(%struct.rtwn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
