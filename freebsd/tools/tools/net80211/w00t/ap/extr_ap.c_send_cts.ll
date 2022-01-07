; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_send_cts.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_send_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32 }
%struct.ieee80211_frame = type { i32*, i32, i32* }

@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_CTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_cts(%struct.params* %0, i8* %1) #0 {
  %3 = alloca %struct.params*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.ieee80211_frame*, align 8
  store %struct.params* %0, %struct.params** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %8 = call i32 @memset(i8* %7, i32 0, i32 64)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %10 = bitcast i8* %9 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %10, %struct.ieee80211_frame** %6, align 8
  %11 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %12 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @IEEE80211_FC0_SUBTYPE_CTS, align 4
  %19 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %18
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 105, i32* %28, align 4
  %29 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @memcpy(i32 %35, i8* %36, i32 6)
  %38 = load %struct.params*, %struct.params** %3, align 8
  %39 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %40 = call i32 @send_frame(%struct.params* %38, %struct.ieee80211_frame* %39, i32 10)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @send_frame(%struct.params*, %struct.ieee80211_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
