; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_wait_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_wait_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i64, i32, %struct.timeval, i32, i64 }
%struct.timeval = type { i32, i32 }
%struct.ieee80211_frame = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@S_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"select()\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sniff()\00", align 1
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_ACK = common dso_local global i32 0, align 4
@S_WAIT_RELAY = common dso_local global i32 0, align 4
@S_SEND_FRAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_ack(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct.ieee80211_frame*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  store i32 10000, i32* %5, align 4
  %10 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.params*, %struct.params** %2, align 8
  %16 = getelementptr inbounds %struct.params, %struct.params* %15, i32 0, i32 3
  %17 = call i32 @elapsed(%struct.timeval* %16, %struct.timeval* %3)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.params*, %struct.params** %2, align 8
  %23 = getelementptr inbounds %struct.params, %struct.params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @S_START, align 4
  %28 = load %struct.params*, %struct.params** %2, align 8
  %29 = getelementptr inbounds %struct.params, %struct.params* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %121

30:                                               ; preds = %21
  %31 = load %struct.params*, %struct.params** %2, align 8
  %32 = call i32 @send_packet(%struct.params* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %14
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sdiv i32 %37, 1000
  %39 = sdiv i32 %38, 1000
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 1000
  %45 = mul nsw i32 %44, 1000
  %46 = sub nsw i32 %41, %45
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = call i32 @FD_ZERO(i32* %6)
  %49 = load %struct.params*, %struct.params** %2, align 8
  %50 = getelementptr inbounds %struct.params, %struct.params* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @FD_SET(i64 %51, i32* %6)
  %53 = load %struct.params*, %struct.params** %2, align 8
  %54 = getelementptr inbounds %struct.params, %struct.params* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @select(i64 %56, i32* %6, i32* null, i32* null, %struct.timeval* %3)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %33
  %60 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %33
  %62 = load %struct.params*, %struct.params** %2, align 8
  %63 = getelementptr inbounds %struct.params, %struct.params* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @FD_ISSET(i64 %64, i32* %6)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %121

68:                                               ; preds = %61
  %69 = load %struct.params*, %struct.params** %2, align 8
  %70 = getelementptr inbounds %struct.params, %struct.params* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %73 = call i32 @sniff(i64 %71, i8* %72, i32 4096)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %68
  %79 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %80 = call %struct.ieee80211_frame* @get_wifi(i8* %79, i32* %7)
  store %struct.ieee80211_frame* %80, %struct.ieee80211_frame** %9, align 8
  %81 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %82 = icmp ne %struct.ieee80211_frame* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %121

84:                                               ; preds = %78
  %85 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %86 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %87 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ACK, align 4
  %88 = call i32 @frame_type(%struct.ieee80211_frame* %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %121

91:                                               ; preds = %84
  %92 = load %struct.params*, %struct.params** %2, align 8
  %93 = getelementptr inbounds %struct.params, %struct.params* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %96 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @memcmp(i32 %94, i32 %97, i32 6)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %121

101:                                              ; preds = %91
  %102 = load %struct.params*, %struct.params** %2, align 8
  %103 = getelementptr inbounds %struct.params, %struct.params* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i32, i32* @S_WAIT_RELAY, align 4
  %108 = load %struct.params*, %struct.params** %2, align 8
  %109 = getelementptr inbounds %struct.params, %struct.params* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.params*, %struct.params** %2, align 8
  %111 = getelementptr inbounds %struct.params, %struct.params* %110, i32 0, i32 3
  %112 = call i32 @gettimeofday(%struct.timeval* %111, i32* null)
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %106
  br label %121

117:                                              ; preds = %101
  %118 = load i32, i32* @S_SEND_FRAG, align 4
  %119 = load %struct.params*, %struct.params** %2, align 8
  %120 = getelementptr inbounds %struct.params, %struct.params* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %26, %67, %83, %90, %100, %117, %116
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @elapsed(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @send_packet(%struct.params*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @sniff(i64, i8*, i32) #1

declare dso_local %struct.ieee80211_frame* @get_wifi(i8*, i32*) #1

declare dso_local i32 @frame_type(%struct.ieee80211_frame*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
