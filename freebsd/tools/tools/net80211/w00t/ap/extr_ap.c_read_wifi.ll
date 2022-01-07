; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_wifi.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32 }
%struct.ieee80211_frame = type { i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"sniff()\00", align 1
@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"wtf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_wifi(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_frame*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  %6 = load %struct.params*, %struct.params** %2, align 8
  %7 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %10 = call i32 @sniff(i32 %8, i8* %9, i32 4096)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %17 = call %struct.ieee80211_frame* @get_wifi(i8* %16, i32* %4)
  store %struct.ieee80211_frame* %17, %struct.ieee80211_frame** %5, align 8
  %18 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %19 = icmp ne %struct.ieee80211_frame* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %77

21:                                               ; preds = %15
  %22 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.params*, %struct.params** %2, align 8
  %26 = getelementptr inbounds %struct.params, %struct.params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @memcmp(i32 %24, i32 %27, i32 6)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 130
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %77

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %21
  %42 = load %struct.params*, %struct.params** %2, align 8
  %43 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %44 = call i32 @ack(%struct.params* %42, %struct.ieee80211_frame* %43)
  %45 = load %struct.params*, %struct.params** %2, align 8
  %46 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @duplicate(%struct.params* %45, %struct.ieee80211_frame* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %77

51:                                               ; preds = %41
  %52 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %74 [
    i32 128, label %59
    i32 130, label %64
    i32 129, label %69
  ]

59:                                               ; preds = %51
  %60 = load %struct.params*, %struct.params** %2, align 8
  %61 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @read_mgt(%struct.params* %60, %struct.ieee80211_frame* %61, i32 %62)
  br label %77

64:                                               ; preds = %51
  %65 = load %struct.params*, %struct.params** %2, align 8
  %66 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @read_ctl(%struct.params* %65, %struct.ieee80211_frame* %66, i32 %67)
  br label %77

69:                                               ; preds = %51
  %70 = load %struct.params*, %struct.params** %2, align 8
  %71 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @read_data(%struct.params* %70, %struct.ieee80211_frame* %71, i32 %72)
  br label %77

74:                                               ; preds = %51
  %75 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 (...) @abort() #3
  unreachable

77:                                               ; preds = %20, %39, %50, %69, %64, %59
  ret void
}

declare dso_local i32 @sniff(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.ieee80211_frame* @get_wifi(i8*, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ack(%struct.params*, %struct.ieee80211_frame*) #1

declare dso_local i64 @duplicate(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @read_mgt(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @read_ctl(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @read_data(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
