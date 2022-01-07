; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_updatestats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_updatestats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rssadapt_node = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rssadapt_node*)* @rssadapt_updatestats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rssadapt_updatestats(%struct.ieee80211_rssadapt_node* %0) #0 {
  %2 = alloca %struct.ieee80211_rssadapt_node*, align 8
  %3 = alloca i64, align 8
  store %struct.ieee80211_rssadapt_node* %0, %struct.ieee80211_rssadapt_node** %2, align 8
  %4 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %9, %12
  %14 = mul nsw i32 10, %13
  %15 = add nsw i32 %6, %14
  %16 = sdiv i32 %15, 2
  %17 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 10, %25
  %27 = call i32 @MAX(i32 1, i32 %26)
  %28 = sdiv i32 10000, %27
  %29 = call i32 @MAX(i32 10000, i32 %28)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @msecs_to_ticks(i64 %31)
  %33 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @msecs_to_ticks(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
