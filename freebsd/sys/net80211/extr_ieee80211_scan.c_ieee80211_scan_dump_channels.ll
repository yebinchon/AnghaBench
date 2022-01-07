; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_scan_dump_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan.c_ieee80211_scan_dump_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { i32, i32, %struct.ieee80211_channel**, %struct.ieee80211com* }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211com = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%u%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_scan_dump_channels(%struct.ieee80211_scan_state* %0) #0 {
  %2 = alloca %struct.ieee80211_scan_state*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %2, align 8
  %7 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %7, i32 0, i32 3
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  store %struct.ieee80211com* %9, %struct.ieee80211com** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %10 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %20, i32 0, i32 2
  %22 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %22, i64 %24
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %25, align 8
  store %struct.ieee80211_channel* %26, %struct.ieee80211_channel** %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %30 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %28, %struct.ieee80211_channel* %29)
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %32 = call i32 @ieee80211_channel_type_char(%struct.ieee80211_channel* %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %30, i32 %32)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %13

37:                                               ; preds = %13
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ieee80211_channel_type_char(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
