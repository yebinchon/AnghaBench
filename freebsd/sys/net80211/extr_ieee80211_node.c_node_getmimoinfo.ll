; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_node_getmimoinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_node_getmimoinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64*, i32*, i32 }
%struct.ieee80211_mimo_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@IEEE80211_MAX_CHAINS = common dso_local global i32 0, align 4
@IEEE80211_RSSI_DUMMY_MARKER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_mimo_info*)* @node_getmimoinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_getmimoinfo(%struct.ieee80211_node* %0, %struct.ieee80211_mimo_info* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.ieee80211_mimo_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.ieee80211_mimo_info* %1, %struct.ieee80211_mimo_info** %4, align 8
  %8 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %9 = call i32 @bzero(%struct.ieee80211_mimo_info* %8, i32 8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %81, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IEEE80211_MAX_CHAINS, align 4
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @MIN(i32 %12, i32 %15)
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %10
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @IEEE80211_RSSI_DUMMY_MARKER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %18
  %30 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %38, align 4
  br label %64

39:                                               ; preds = %18
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @IEEE80211_RSSI_GET(i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 127
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 127, %48 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi i32 [ 0, %44 ], [ %52, %51 ]
  %55 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %54, i32* %63, align 4
  br label %64

64:                                               ; preds = %53, %29
  %65 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ieee80211_mimo_info*, %struct.ieee80211_mimo_info** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_mimo_info, %struct.ieee80211_mimo_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %71, i32* %80, align 4
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %10

84:                                               ; preds = %10
  ret void
}

declare dso_local i32 @bzero(%struct.ieee80211_mimo_info*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @IEEE80211_RSSI_GET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
