; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_node_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_node_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211_rateset, i32, %struct.ieee80211_amrr_node* }
%struct.ieee80211_rateset = type { i32* }
%struct.ieee80211_amrr_node = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.sbuf = type { i32 }

@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rate: MCS %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"rate: %d Mbit\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ticks: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"txcnt: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"success: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"success_threshold: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"recovery: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"retry_cnt: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.sbuf*)* @amrr_node_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amrr_node_stats(%struct.ieee80211_node* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_amrr_node*, align 8
  %7 = alloca %struct.ieee80211_rateset*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 2
  %10 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %9, align 8
  store %struct.ieee80211_amrr_node* %10, %struct.ieee80211_amrr_node** %6, align 8
  %11 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %12 = icmp ne %struct.ieee80211_amrr_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %83

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %16 = call i64 @amrr_node_is_11n(%struct.ieee80211_node* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to %struct.ieee80211_rateset*
  store %struct.ieee80211_rateset* %21, %struct.ieee80211_rateset** %7, align 8
  %22 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @sbuf_printf(%struct.sbuf* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %52

35:                                               ; preds = %14
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %36, i32 0, i32 0
  store %struct.ieee80211_rateset* %37, %struct.ieee80211_rateset** %7, align 8
  %38 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %5, align 4
  %48 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sdiv i32 %49, 2
  %51 = call i32 @sbuf_printf(%struct.sbuf* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %35, %18
  %53 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %54 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sbuf_printf(%struct.sbuf* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %59 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sbuf_printf(%struct.sbuf* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %64 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sbuf_printf(%struct.sbuf* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %69 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sbuf_printf(%struct.sbuf* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %74 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @sbuf_printf(%struct.sbuf* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %79 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sbuf_printf(%struct.sbuf* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %52, %13
  ret void
}

declare dso_local i64 @amrr_node_is_11n(%struct.ieee80211_node*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
