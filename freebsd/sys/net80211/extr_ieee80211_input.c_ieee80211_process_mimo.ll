; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_input.c_ieee80211_process_mimo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_input.c_ieee80211_process_mimo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32*, i32*, i32*, i32* }
%struct.ieee80211_rx_stats = type { i32, i32, i32*, i32*, i32*, i32* }

@IEEE80211_R_C_CHAIN = common dso_local global i32 0, align 4
@IEEE80211_R_C_NF = common dso_local global i32 0, align 4
@IEEE80211_R_C_RSSI = common dso_local global i32 0, align 4
@IEEE80211_MAX_CHAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_rx_stats*)* @ieee80211_process_mimo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_process_mimo(%struct.ieee80211_node* %0, %struct.ieee80211_rx_stats* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.ieee80211_rx_stats*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %4, align 8
  %6 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IEEE80211_R_C_CHAIN, align 4
  %10 = load i32, i32* @IEEE80211_R_C_NF, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IEEE80211_R_C_RSSI, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %8, %13
  %15 = load i32, i32* @IEEE80211_R_C_CHAIN, align 4
  %16 = load i32, i32* @IEEE80211_R_C_NF, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IEEE80211_R_C_RSSI, align 4
  %19 = or i32 %17, %18
  %20 = icmp ne i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %110

22:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %62, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_MAX_CHAINS, align 4
  %29 = call i32 @MIN(i32 %27, i32 %28)
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %23
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IEEE80211_RSSI_LPF(i32 %38, i32 %45)
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IEEE80211_RSSI_LPF(i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %31
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %23

65:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %101, %65
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IEEE80211_MAX_CHAINS, align 4
  %72 = call i32 @MIN(i32 %70, i32 %71)
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %66
  %75 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %83 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %96 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %74
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %66

104:                                              ; preds = %66
  %105 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %21
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @IEEE80211_RSSI_LPF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
