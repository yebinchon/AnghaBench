; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_enque.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_enque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i64 }
%struct.ieee80211_frame = type { i32* }

@IEEE80211_FC1_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enque(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.params*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %8 = call i64 @broadcast(%struct.ieee80211_frame* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %45

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp uge i64 8, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.params*, %struct.params** %4, align 8
  %18 = getelementptr inbounds %struct.params, %struct.params* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @memcpy(i64 %19, %struct.ieee80211_frame* %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.params*, %struct.params** %4, align 8
  %25 = getelementptr inbounds %struct.params, %struct.params* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.params*, %struct.params** %4, align 8
  %27 = getelementptr inbounds %struct.params, %struct.params* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.params*, %struct.params** %4, align 8
  %29 = getelementptr inbounds %struct.params, %struct.params* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %31, %struct.ieee80211_frame** %5, align 8
  %32 = load i32, i32* @IEEE80211_FC1_RETRY, align 4
  %33 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load %struct.params*, %struct.params** %4, align 8
  %40 = getelementptr inbounds %struct.params, %struct.params* %39, i32 0, i32 2
  %41 = call i32 @gettimeofday(i32* %40, i32* null)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %11
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %10, %43, %11
  ret void
}

declare dso_local i64 @broadcast(%struct.ieee80211_frame*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
