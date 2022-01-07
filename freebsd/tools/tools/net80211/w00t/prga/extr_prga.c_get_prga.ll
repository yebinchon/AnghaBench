; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_get_prga.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_get_prga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i32, i32, i32, i32 }
%struct.ieee80211_frame = type { i32*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"sniff()\00", align 1
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@known_pt_arp = common dso_local global i8* null, align 8
@known_pt_ip = common dso_local global i8* null, align 8
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Packet not WEP!\0A\00", align 1
@known_pt_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_prga(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  %9 = load %struct.params*, %struct.params** %2, align 8
  %10 = getelementptr inbounds %struct.params, %struct.params* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %13 = call i32 @sniff(i32 %11, i8* %12, i32 4096)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %20 = call %struct.ieee80211_frame* @get_wifi(i8* %19, i32* %4)
  store %struct.ieee80211_frame* %20, %struct.ieee80211_frame** %5, align 8
  %21 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %22 = icmp ne %struct.ieee80211_frame* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %129

24:                                               ; preds = %18
  %25 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %26 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %27 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %28 = call i32 @frame_type(%struct.ieee80211_frame* %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %129

31:                                               ; preds = %24
  %32 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @is_arp(%struct.ieee80211_frame* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i8*, i8** @known_pt_arp, align 8
  store i8* %37, i8** %8, align 8
  br label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** @known_pt_ip, align 8
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %6, align 8
  br label %57

53:                                               ; preds = %40
  %54 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.params*, %struct.params** %2, align 8
  %59 = getelementptr inbounds %struct.params, %struct.params* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @memcmp(i32 %60, i8* %61, i32 6)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %129

65:                                               ; preds = %57
  %66 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %65
  %75 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %129

76:                                               ; preds = %65
  %77 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %77, i64 1
  %79 = bitcast %struct.ieee80211_frame* %78 to i8*
  store i8* %79, i8** %7, align 8
  %80 = load %struct.params*, %struct.params** %2, align 8
  %81 = getelementptr inbounds %struct.params, %struct.params* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @memcpy(i32 %82, i8* %83, i32 3)
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  store i8* %86, i8** %7, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 %88, 12
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @known_pt_len, align 4
  %93 = icmp sge i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %120, %76
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @known_pt_len, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = load i8*, i8** %7, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = xor i32 %106, %109
  %111 = trunc i32 %110 to i8
  %112 = load %struct.params*, %struct.params** %2, align 8
  %113 = getelementptr inbounds %struct.params, %struct.params* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 %111, i8* %117, align 1
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  br label %120

120:                                              ; preds = %100
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %96

123:                                              ; preds = %96
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.params*, %struct.params** %2, align 8
  %126 = getelementptr inbounds %struct.params, %struct.params* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.params*, %struct.params** %2, align 8
  %128 = call i32 @save_prga(%struct.params* %127)
  br label %129

129:                                              ; preds = %123, %74, %64, %30, %23
  ret void
}

declare dso_local i32 @sniff(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.ieee80211_frame* @get_wifi(i8*, i32*) #1

declare dso_local i32 @frame_type(%struct.ieee80211_frame*, i32, i32) #1

declare dso_local i64 @is_arp(%struct.ieee80211_frame*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_prga(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
