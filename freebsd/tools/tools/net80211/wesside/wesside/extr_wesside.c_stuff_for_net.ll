; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_stuff_for_net.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_stuff_for_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32*, i8*, i8* }

@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@state = common dso_local global i64 0, align 8
@SPOOF_MAC = common dso_local global i64 0, align 8
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_FROMDS = common dso_local global i32 0, align 4
@mymac = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Trying to use MAC=(%s)\0A\00", align 1
@FOUND_VICTIM = common dso_local global i64 0, align 8
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stuff_for_net(%struct.ieee80211_frame* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %107

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %107

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 24
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* @state, align 8
  %36 = load i64, i64* @SPOOF_MAC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %30
  %39 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %49 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @memcpy(i8* %48, i8* %51, i32 6)
  br label %71

53:                                               ; preds = %38
  %54 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE80211_FC1_DIR_FROMDS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %64 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %65 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @memcpy(i8* %63, i8* %66, i32 6)
  br label %70

68:                                               ; preds = %53
  %69 = call i32 @assert(i32 0)
  br label %70

70:                                               ; preds = %68, %62
  br label %71

71:                                               ; preds = %70, %47
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 255
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71
  br label %107

82:                                               ; preds = %76
  %83 = load i8*, i8** @mymac, align 8
  %84 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %85 = call i32 @memcpy(i8* %83, i8* %84, i32 6)
  %86 = load i8*, i8** @mymac, align 8
  %87 = call i32 @mac2str(i8* %86)
  %88 = call i32 @time_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* @FOUND_VICTIM, align 8
  store i64 %89, i64* @state, align 8
  br label %107

90:                                               ; preds = %30
  %91 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %92 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %100, 16
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @got_wep(%struct.ieee80211_frame* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %99, %90
  br label %107

107:                                              ; preds = %81, %82, %106, %26, %2
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @time_print(i8*, i32) #1

declare dso_local i32 @mac2str(i8*) #1

declare dso_local i32 @got_wep(%struct.ieee80211_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
