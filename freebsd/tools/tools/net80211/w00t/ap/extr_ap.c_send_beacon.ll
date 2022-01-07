; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_send_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_send_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32 }
%struct.ieee80211_frame = type { i8*, i32*, i32 }

@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_beacon(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct.ieee80211_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %8 = bitcast i8* %7 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %8, %struct.ieee80211_frame** %4, align 8
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 4096)
  %11 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %12 = load %struct.params*, %struct.params** %2, align 8
  %13 = call i32 @fill_basic(%struct.ieee80211_frame* %11, %struct.params* %12)
  %14 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @memset(i8* %16, i32 255, i32 6)
  %18 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.params*, %struct.params** %2, align 8
  %22 = getelementptr inbounds %struct.params, %struct.params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i32 %20, i32 %23, i32 6)
  %25 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %26 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %25
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @IEEE80211_FC0_SUBTYPE_BEACON, align 4
  %33 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load %struct.params*, %struct.params** %2, align 8
  %40 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %41 = call i32 @fill_beacon(%struct.params* %39, %struct.ieee80211_frame* %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %43 = bitcast %struct.ieee80211_frame* %42 to i8*
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  store i8 5, i8* %47, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 4, i8* %49, align 1
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 6
  store i32 %52, i32* %5, align 4
  %53 = load %struct.params*, %struct.params** %2, align 8
  %54 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @send_frame(%struct.params* %53, %struct.ieee80211_frame* %54, i32 %55)
  %57 = load %struct.params*, %struct.params** %2, align 8
  %58 = getelementptr inbounds %struct.params, %struct.params* %57, i32 0, i32 0
  %59 = call i32 @gettimeofday(i32* %58, i32* null)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %1
  %62 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*, %struct.params*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @fill_beacon(%struct.params*, %struct.ieee80211_frame*) #1

declare dso_local i32 @send_frame(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
