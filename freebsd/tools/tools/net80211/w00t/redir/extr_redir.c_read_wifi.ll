; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_read_wifi.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_read_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i64, i32, i32 }
%struct.ieee80211_frame = type { i32 }

@read_wifi.buf = internal global i8* null, align 8
@read_wifi.buflen = internal global i32 4096, align 4
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sniff()\00", align 1
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_ACK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
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
  %18 = getelementptr inbounds %struct.params, %struct.params* %17, i32 0, i32 2
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
  br label %78

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %35 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %36 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ACK, align 4
  %37 = call i64 @frame_type(%struct.ieee80211_frame* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.params*, %struct.params** %2, align 8
  %41 = getelementptr inbounds %struct.params, %struct.params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @memcmp(i32 %42, i32 %45, i32 6)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.params*, %struct.params** %2, align 8
  %50 = call i32 @got_ack(%struct.params* %49)
  br label %78

51:                                               ; preds = %39, %33
  %52 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %53 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %54 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %55 = call i64 @frame_type(%struct.ieee80211_frame* %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load %struct.params*, %struct.params** %2, align 8
  %59 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @wanted(%struct.params* %58, %struct.ieee80211_frame* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %78

64:                                               ; preds = %57
  %65 = load %struct.params*, %struct.params** %2, align 8
  %66 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @enque(%struct.params* %65, i8** @read_wifi.buf, %struct.ieee80211_frame* %66, i32 %67)
  %69 = load %struct.params*, %struct.params** %2, align 8
  %70 = getelementptr inbounds %struct.params, %struct.params* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @S_START, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load %struct.params*, %struct.params** %2, align 8
  %76 = call i32 @send_queue(%struct.params* %75)
  br label %77

77:                                               ; preds = %74, %64
  br label %78

78:                                               ; preds = %32, %48, %63, %77, %51
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sniff(i32, i8*, i32) #1

declare dso_local %struct.ieee80211_frame* @get_wifi(i8*, i32*) #1

declare dso_local i64 @frame_type(%struct.ieee80211_frame*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @got_ack(%struct.params*) #1

declare dso_local i32 @wanted(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @enque(%struct.params*, i8**, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @send_queue(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
