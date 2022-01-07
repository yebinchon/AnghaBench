; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_read_wifi.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_read_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_frame = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"sniff()\00", align 1
@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@S_WAIT_ACK = common dso_local global i32 0, align 4
@S_ASSOCIATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown CTL frame %d\0A\00", align 1
@IEEE80211_FC0_SUBTYPE_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DEAUTH = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DISASSOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Got management! %d\0A\00", align 1
@S_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_wifi(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %8 = load %struct.params*, %struct.params** %2, align 8
  %9 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %12 = call i32 @sniff(i32 %10, i8* %11, i32 4096)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %19 = call %struct.ieee80211_frame* @get_wifi(i8* %18, i32* %4)
  store %struct.ieee80211_frame* %19, %struct.ieee80211_frame** %5, align 8
  %20 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %21 = icmp ne %struct.ieee80211_frame* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %106

23:                                               ; preds = %17
  %24 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %25 = load %struct.params*, %struct.params** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @generic_process(%struct.ieee80211_frame* %24, %struct.params* %25, i32 %26)
  %28 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %29 = load %struct.params*, %struct.params** %2, align 8
  %30 = getelementptr inbounds %struct.params, %struct.params* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @for_me(%struct.ieee80211_frame* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %106

35:                                               ; preds = %23
  %36 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %35
  %54 = load i32, i32* %7, align 4
  switch i32 %54, label %67 [
    i32 129, label %55
    i32 128, label %66
  ]

55:                                               ; preds = %53
  %56 = load %struct.params*, %struct.params** %2, align 8
  %57 = getelementptr inbounds %struct.params, %struct.params* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @S_WAIT_ACK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @S_ASSOCIATED, align 4
  %63 = load %struct.params*, %struct.params** %2, align 8
  %64 = getelementptr inbounds %struct.params, %struct.params* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %55
  br label %73

66:                                               ; preds = %53
  br label %73

67:                                               ; preds = %53
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @IEEE80211_FC0_SUBTYPE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = call i32 (...) @abort() #3
  unreachable

73:                                               ; preds = %66, %65
  br label %106

74:                                               ; preds = %35
  %75 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %76 = load %struct.params*, %struct.params** %2, align 8
  %77 = getelementptr inbounds %struct.params, %struct.params* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @from_ap(%struct.ieee80211_frame* %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %106

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %106

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DEAUTH, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DISASSOC, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @IEEE80211_FC0_SUBTYPE_SHIFT, align 4
  %98 = ashr i32 %96, %97
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.params*, %struct.params** %2, align 8
  %101 = getelementptr inbounds %struct.params, %struct.params* %100, i32 0, i32 0
  store i32 -1, i32* %101, align 4
  %102 = load i32, i32* @S_START, align 4
  %103 = load %struct.params*, %struct.params** %2, align 8
  %104 = getelementptr inbounds %struct.params, %struct.params* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %95, %91
  br label %106

106:                                              ; preds = %105, %86, %81, %73, %34, %22
  ret void
}

declare dso_local i32 @sniff(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.ieee80211_frame* @get_wifi(i8*, i32*) #1

declare dso_local i32 @generic_process(%struct.ieee80211_frame*, %struct.params*, i32) #1

declare dso_local i32 @for_me(%struct.ieee80211_frame*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @from_ap(%struct.ieee80211_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
