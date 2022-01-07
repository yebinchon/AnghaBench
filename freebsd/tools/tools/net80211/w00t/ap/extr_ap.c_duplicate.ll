; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_duplicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32 }
%struct.ieee80211_frame = type { i32*, i32 }
%struct.client = type { i32, i32 }

@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@IEEE80211_FC1_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @duplicate(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.params*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.client*, align 8
  %9 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %11 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %12 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %13 = call i32 @frame_type(%struct.ieee80211_frame* %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

16:                                               ; preds = %3
  %17 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %18 = call i32 @seqno(%struct.ieee80211_frame* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.params*, %struct.params** %5, align 8
  %20 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.client* @client_find(%struct.params* %19, i32 %22)
  store %struct.client* %23, %struct.client** %8, align 8
  %24 = load %struct.client*, %struct.client** %8, align 8
  %25 = icmp ne %struct.client* %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %16
  %27 = call %struct.client* @malloc(i32 8)
  store %struct.client* %27, %struct.client** %8, align 8
  %28 = load %struct.client*, %struct.client** %8, align 8
  %29 = icmp ne %struct.client* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.client*, %struct.client** %8, align 8
  %34 = call i32 @memset(%struct.client* %33, i32 0, i32 8)
  %35 = load %struct.client*, %struct.client** %8, align 8
  %36 = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(i32 %37, i32 %40, i32 6)
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.client*, %struct.client** %8, align 8
  %45 = getelementptr inbounds %struct.client, %struct.client* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.params*, %struct.params** %5, align 8
  %47 = load %struct.client*, %struct.client** %8, align 8
  %48 = call i32 @client_insert(%struct.params* %46, %struct.client* %47)
  br label %49

49:                                               ; preds = %32, %16
  %50 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_FC1_RETRY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.client*, %struct.client** %8, align 8
  %61 = getelementptr inbounds %struct.client, %struct.client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sle i32 %59, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.client*, %struct.client** %8, align 8
  %66 = getelementptr inbounds %struct.client, %struct.client* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp slt i32 %69, 5
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %77

72:                                               ; preds = %64, %58
  br label %73

73:                                               ; preds = %72, %49
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.client*, %struct.client** %8, align 8
  %76 = getelementptr inbounds %struct.client, %struct.client* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %71, %15
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @frame_type(%struct.ieee80211_frame*, i32, i32) #1

declare dso_local i32 @seqno(%struct.ieee80211_frame*) #1

declare dso_local %struct.client* @client_find(%struct.params*, i32) #1

declare dso_local %struct.client* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(%struct.client*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @client_insert(%struct.params*, %struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
