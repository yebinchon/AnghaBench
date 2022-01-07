; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_send_pres.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_send_pres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8* }
%struct.ieee80211_frame = type { i32*, i32, i32 }

@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_PROBE_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sending probe response\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_pres(%struct.params* %0, i8* %1) #0 {
  %3 = alloca %struct.params*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %9 = bitcast i8* %8 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %9, %struct.ieee80211_frame** %6, align 8
  %10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 4096)
  %12 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %13 = load %struct.params*, %struct.params** %3, align 8
  %14 = call i32 @fill_basic(%struct.ieee80211_frame* %12, %struct.params* %13)
  %15 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @memcpy(i32 %17, i8* %18, i32 6)
  %20 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.params*, %struct.params** %3, align 8
  %24 = getelementptr inbounds %struct.params, %struct.params* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @memcpy(i32 %22, i8* %25, i32 6)
  %27 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %28 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @IEEE80211_FC0_SUBTYPE_PROBE_RESP, align 4
  %35 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %34
  store i32 %40, i32* %38, align 4
  %41 = load %struct.params*, %struct.params** %3, align 8
  %42 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %43 = call i32 @fill_beacon(%struct.params* %41, %struct.ieee80211_frame* %42)
  store i32 %43, i32* %7, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.params*, %struct.params** %3, align 8
  %46 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @send_frame(%struct.params* %45, %struct.ieee80211_frame* %46, i32 %47)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*, %struct.params*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @fill_beacon(%struct.params*, %struct.ieee80211_frame*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @send_frame(%struct.params*, %struct.ieee80211_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
