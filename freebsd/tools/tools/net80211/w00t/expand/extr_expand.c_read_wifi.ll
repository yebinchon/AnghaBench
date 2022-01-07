; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_read_wifi.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_read_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i64, i32, i32, i32, i32 }
%struct.ieee80211_frame = type { i32*, i32, i32, i32 }

@read_wifi.buf = internal global i8* null, align 8
@read_wifi.buflen = internal global i32 4096, align 4
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sniff()\00", align 1
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_FROMDS = common dso_local global i32 0, align 4
@S_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_wifi(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca %struct.ieee80211_frame*, align 8
  %4 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %5 = load i8*, i8** @read_wifi.buf, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @read_wifi.buflen, align 4
  %9 = call i64 @malloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @read_wifi.buf, align 8
  %11 = load i8*, i8** @read_wifi.buf, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %7
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.params*, %struct.params** %2, align 8
  %18 = getelementptr inbounds %struct.params, %struct.params* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** @read_wifi.buf, align 8
  %21 = load i32, i32* @read_wifi.buflen, align 4
  %22 = call i32 @sniff(i32 %19, i8* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i8*, i8** @read_wifi.buf, align 8
  %29 = call %struct.ieee80211_frame* @get_wifi(i8* %28, i32* %4)
  store %struct.ieee80211_frame* %29, %struct.ieee80211_frame** %3, align 8
  %30 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %31 = icmp ne %struct.ieee80211_frame* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %107

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %35 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %36 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %37 = call i64 @frame_type(%struct.ieee80211_frame* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IEEE80211_FC1_DIR_FROMDS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %39
  %49 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.params*, %struct.params** %2, align 8
  %53 = getelementptr inbounds %struct.params, %struct.params* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @memcmp(i32 %51, i32 %54, i32 6)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %48
  %58 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.params*, %struct.params** %2, align 8
  %62 = getelementptr inbounds %struct.params, %struct.params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @memcmp(i32 %60, i32 %63, i32 5)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %57
  %67 = load %struct.params*, %struct.params** %2, align 8
  %68 = getelementptr inbounds %struct.params, %struct.params* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %71 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @memcmp(i32 %69, i32 %72, i32 6)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.params*, %struct.params** %2, align 8
  %77 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @got_mcast(%struct.params* %76, %struct.ieee80211_frame* %77, i32 %78)
  br label %107

80:                                               ; preds = %66, %57, %48, %39, %33
  %81 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %82 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %83 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %84 = call i64 @frame_type(%struct.ieee80211_frame* %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %80
  %87 = load %struct.params*, %struct.params** %2, align 8
  %88 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @wanted(%struct.params* %87, %struct.ieee80211_frame* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %107

93:                                               ; preds = %86
  %94 = load %struct.params*, %struct.params** %2, align 8
  %95 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @enque(%struct.params* %94, i8** @read_wifi.buf, %struct.ieee80211_frame* %95, i32 %96)
  %98 = load %struct.params*, %struct.params** %2, align 8
  %99 = getelementptr inbounds %struct.params, %struct.params* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @S_START, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load %struct.params*, %struct.params** %2, align 8
  %105 = call i32 @send_queue(%struct.params* %104)
  br label %106

106:                                              ; preds = %103, %93
  br label %107

107:                                              ; preds = %32, %75, %92, %106, %80
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sniff(i32, i8*, i32) #1

declare dso_local %struct.ieee80211_frame* @get_wifi(i8*, i32*) #1

declare dso_local i64 @frame_type(%struct.ieee80211_frame*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @got_mcast(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @wanted(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @enque(%struct.params*, i8**, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @send_queue(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
