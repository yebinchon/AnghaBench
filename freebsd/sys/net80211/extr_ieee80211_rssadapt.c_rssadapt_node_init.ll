; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_node_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211vap*, %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rateset }
%struct.ieee80211vap = type { i32, %struct.ieee80211_rssadapt* }
%struct.ieee80211_rssadapt = type { i32 }
%struct.ieee80211_rssadapt_node = type { i64, i32, %struct.ieee80211_rateset, %struct.ieee80211_rssadapt* }
%struct.ieee80211_rateset = type { i64, i32* }

@.str = private unnamed_addr constant [76 x i8] c"ratectl structure was not allocated, per-node structure allocation skipped\0A\00", align 1
@M_80211_RATECTL = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"couldn't alloc per-node ratectl structure\0A\00", align 1
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@IEEE80211_MSG_RATECTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"RSSADAPT initial rate %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*)* @rssadapt_node_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rssadapt_node_init(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211_rssadapt_node*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_rssadapt*, align 8
  %6 = alloca %struct.ieee80211_rateset*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 1
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %4, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_rssadapt*, %struct.ieee80211_rssadapt** %11, align 8
  store %struct.ieee80211_rssadapt* %12, %struct.ieee80211_rssadapt** %5, align 8
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 3
  store %struct.ieee80211_rateset* %14, %struct.ieee80211_rateset** %6, align 8
  %15 = load %struct.ieee80211_rssadapt*, %struct.ieee80211_rssadapt** %5, align 8
  %16 = icmp ne %struct.ieee80211_rssadapt* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @if_printf(i32 %20, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %114

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %23, i32 0, i32 2
  %25 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %24, align 8
  %26 = icmp eq %struct.ieee80211_rssadapt_node* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i32, i32* @M_80211_RATECTL, align 4
  %29 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %30 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.ieee80211_rssadapt_node* @IEEE80211_MALLOC(i32 40, i32 %28, i32 %31)
  store %struct.ieee80211_rssadapt_node* %32, %struct.ieee80211_rssadapt_node** %3, align 8
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %33, i32 0, i32 2
  store %struct.ieee80211_rssadapt_node* %32, %struct.ieee80211_rssadapt_node** %34, align 8
  %35 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %36 = icmp eq %struct.ieee80211_rssadapt_node* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @if_printf(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %114

42:                                               ; preds = %27
  br label %47

43:                                               ; preds = %22
  %44 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %45 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %44, i32 0, i32 2
  %46 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %45, align 8
  store %struct.ieee80211_rssadapt_node* %46, %struct.ieee80211_rssadapt_node** %3, align 8
  br label %47

47:                                               ; preds = %43, %42
  %48 = load %struct.ieee80211_rssadapt*, %struct.ieee80211_rssadapt** %5, align 8
  %49 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %49, i32 0, i32 3
  store %struct.ieee80211_rssadapt* %48, %struct.ieee80211_rssadapt** %50, align 8
  %51 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %51, i32 0, i32 2
  %53 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %54 = bitcast %struct.ieee80211_rateset* %52 to i8*
  %55 = bitcast %struct.ieee80211_rateset* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %57 = call i32 @rssadapt_updatestats(%struct.ieee80211_rssadapt_node* %56)
  %58 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %60, 1
  %62 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %84, %47
  %65 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp sgt i32 %79, 72
  br label %81

81:                                               ; preds = %69, %64
  %82 = phi i1 [ false, %64 ], [ %80, %69 ]
  br i1 %82, label %83, label %89

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %86, align 8
  br label %64

89:                                               ; preds = %81
  %90 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %94 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %99 = and i32 %97, %98
  %100 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %101 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @ticks, align 4
  %103 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %3, align 8
  %104 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %106 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %105, i32 0, i32 1
  %107 = load %struct.ieee80211vap*, %struct.ieee80211vap** %106, align 8
  %108 = load i32, i32* @IEEE80211_MSG_RATECTL, align 4
  %109 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %110 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %111 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %107, i32 %108, %struct.ieee80211_node* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %89, %37, %17
  ret void
}

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local %struct.ieee80211_rssadapt_node* @IEEE80211_MALLOC(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rssadapt_updatestats(%struct.ieee80211_rssadapt_node*) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
