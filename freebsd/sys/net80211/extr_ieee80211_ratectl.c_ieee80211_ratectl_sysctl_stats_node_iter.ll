; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ratectl.c_ieee80211_ratectl_sysctl_stats_node_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ratectl.c_ieee80211_ratectl_sysctl_stats_node_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"MAC: %6D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @ieee80211_ratectl_sysctl_stats_node_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_ratectl_sysctl_stats_node_iter(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.sbuf*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.sbuf*
  store %struct.sbuf* %7, %struct.sbuf** %5, align 8
  %8 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %14 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %15 = call i32 @ieee80211_ratectl_node_stats(%struct.ieee80211_node* %13, %struct.sbuf* %14)
  %16 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %17 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @ieee80211_ratectl_node_stats(%struct.ieee80211_node*, %struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
