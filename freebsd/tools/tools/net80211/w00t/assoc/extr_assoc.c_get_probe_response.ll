; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_get_probe_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_get_probe_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_frame = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"sniff()\00", align 1
@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_PROBE_RESP = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_PRIVACY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Warning, expecting SSID got %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Warning, expected rates got %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Got response from %s [%s] [%s] ESS=%d WEP=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_probe_response(%struct.params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.params*, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [18 x i8], align 16
  %12 = alloca [18 x i8], align 16
  store %struct.params* %0, %struct.params** %3, align 8
  %13 = load %struct.params*, %struct.params** %3, align 8
  %14 = getelementptr inbounds %struct.params, %struct.params* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %17 = call i32 @sniff(i32 %15, i8* %16, i32 4096)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %24 = call %struct.ieee80211_frame* @get_wifi(i8* %23, i32* %5)
  store %struct.ieee80211_frame* %24, %struct.ieee80211_frame** %6, align 8
  %25 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %26 = icmp ne %struct.ieee80211_frame* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %142

28:                                               ; preds = %22
  %29 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %30 = load %struct.params*, %struct.params** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @generic_process(%struct.ieee80211_frame* %29, %struct.params* %30, i32 %31)
  %33 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %34 = load %struct.params*, %struct.params** %3, align 8
  %35 = getelementptr inbounds %struct.params, %struct.params* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @for_me(%struct.ieee80211_frame* %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %142

40:                                               ; preds = %28
  %41 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %42 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %43 = load i32, i32* @IEEE80211_FC0_SUBTYPE_PROBE_RESP, align 4
  %44 = call i32 @frame_type(%struct.ieee80211_frame* %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %142

47:                                               ; preds = %40
  %48 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %48, i64 1
  %50 = bitcast %struct.ieee80211_frame* %49 to i8*
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @IEEE80211_CAPINFO_PRIVACY, align 1
  %63 = sext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  store i32 %67, i32* %9, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %47
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 0, i32* %2, align 4
  br label %142

79:                                               ; preds = %47
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = add nsw i32 1, %86
  %88 = load i8*, i8** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %100

95:                                               ; preds = %79
  %96 = load i8*, i8** %7, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  store i32 0, i32* %2, align 4
  br label %142

100:                                              ; preds = %79
  %101 = load i8*, i8** %7, align 8
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %7, align 8
  %104 = getelementptr inbounds [18 x i8], [18 x i8]* %11, i64 0, i64 0
  %105 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @mac2str(i8* %104, i32 %107)
  %109 = getelementptr inbounds [18 x i8], [18 x i8]* %12, i64 0, i64 0
  %110 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %111 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mac2str(i8* %109, i32 %112)
  %114 = getelementptr inbounds [18 x i8], [18 x i8]* %11, i64 0, i64 0
  %115 = getelementptr inbounds [18 x i8], [18 x i8]* %12, i64 0, i64 0
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %114, i8* %115, i8* %116, i32 %117, i32 %118)
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.params*, %struct.params** %3, align 8
  %122 = getelementptr inbounds %struct.params, %struct.params* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @strcmp(i8* %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %142

127:                                              ; preds = %100
  %128 = load %struct.params*, %struct.params** %3, align 8
  %129 = getelementptr inbounds %struct.params, %struct.params* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %132 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @memcpy(i32 %130, i32 %133, i32 6)
  %135 = load %struct.params*, %struct.params** %3, align 8
  %136 = getelementptr inbounds %struct.params, %struct.params* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %139 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @memcpy(i32 %137, i32 %140, i32 6)
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %127, %126, %95, %74, %46, %39, %27
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @sniff(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.ieee80211_frame* @get_wifi(i8*, i32*) #1

declare dso_local i32 @generic_process(%struct.ieee80211_frame*, %struct.params*, i32) #1

declare dso_local i32 @for_me(%struct.ieee80211_frame*, i32) #1

declare dso_local i32 @frame_type(%struct.ieee80211_frame*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mac2str(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
