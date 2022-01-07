; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_read_tap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_read_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i32, i8, i32, i32, i32 }
%struct.ieee80211_frame = type { i8*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"read()\00", align 1
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_tap(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca %struct.ieee80211_frame*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  store i32 8, i32* %4, align 4
  %8 = load %struct.params*, %struct.params** %2, align 8
  %9 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %3, align 8
  store i32 10, i32* %5, align 4
  %11 = load %struct.params*, %struct.params** %2, align 8
  %12 = getelementptr inbounds %struct.params, %struct.params* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.params*, %struct.params** %2, align 8
  %27 = getelementptr inbounds %struct.params, %struct.params* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @memset(i8* %28, i32 0, i32 8)
  %30 = load %struct.params*, %struct.params** %2, align 8
  %31 = getelementptr inbounds %struct.params, %struct.params* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @read(i32 %32, i8* %33, i32 %34)
  %36 = load %struct.params*, %struct.params** %2, align 8
  %37 = getelementptr inbounds %struct.params, %struct.params* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.params*, %struct.params** %2, align 8
  %39 = getelementptr inbounds %struct.params, %struct.params* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %18
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %18
  %45 = load %struct.params*, %struct.params** %2, align 8
  %46 = getelementptr inbounds %struct.params, %struct.params* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %48, %struct.ieee80211_frame** %7, align 8
  %49 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @memcpy(i8* %49, i8* %50, i32 6)
  %52 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %53 = load %struct.params*, %struct.params** %2, align 8
  %54 = call i32 @fill_basic(%struct.ieee80211_frame* %52, %struct.params* %53)
  %55 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %59 = call i32 @memcpy(i8* %57, i8* %58, i32 8)
  %60 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %61 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %68 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load %struct.params*, %struct.params** %2, align 8
  %75 = getelementptr inbounds %struct.params, %struct.params* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %44
  %79 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %80 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %79
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %44
  %87 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %87, i64 1
  %89 = bitcast %struct.ieee80211_frame* %88 to i8*
  store i8* %89, i8** %3, align 8
  %90 = load %struct.params*, %struct.params** %2, align 8
  %91 = getelementptr inbounds %struct.params, %struct.params* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  store i8* %96, i8** %3, align 8
  br label %97

97:                                               ; preds = %94, %86
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %3, align 8
  store i8 -86, i8* %98, align 1
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %3, align 8
  store i8 -86, i8* %100, align 1
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %3, align 8
  store i8 3, i8* %102, align 1
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  store i8 0, i8* %104, align 1
  %106 = load i8*, i8** %3, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %3, align 8
  store i8 0, i8* %106, align 1
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %3, align 8
  store i8 0, i8* %108, align 1
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.params*, %struct.params** %2, align 8
  %112 = getelementptr inbounds %struct.params, %struct.params* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.params*, %struct.params** %2, align 8
  %116 = getelementptr inbounds %struct.params, %struct.params* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %97
  %120 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %121 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %120, i64 1
  %122 = bitcast %struct.ieee80211_frame* %121 to i8*
  store i8* %122, i8** %3, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = load %struct.params*, %struct.params** %2, align 8
  %125 = getelementptr inbounds %struct.params, %struct.params* %124, i32 0, i32 2
  %126 = call i32 @memcpy(i8* %123, i8* %125, i32 3)
  %127 = load i8*, i8** %3, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 3
  store i8 0, i8* %128, align 1
  %129 = load %struct.params*, %struct.params** %2, align 8
  %130 = getelementptr inbounds %struct.params, %struct.params* %129, i32 0, i32 2
  %131 = load i8, i8* %130, align 4
  %132 = add i8 %131, 1
  store i8 %132, i8* %130, align 4
  %133 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %134 = load %struct.params*, %struct.params** %2, align 8
  %135 = getelementptr inbounds %struct.params, %struct.params* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.params*, %struct.params** %2, align 8
  %138 = getelementptr inbounds %struct.params, %struct.params* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.params*, %struct.params** %2, align 8
  %141 = getelementptr inbounds %struct.params, %struct.params* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @wep_encrypt(%struct.ieee80211_frame* %133, i32 %136, i32 %139, i32 %142)
  %144 = load %struct.params*, %struct.params** %2, align 8
  %145 = getelementptr inbounds %struct.params, %struct.params* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 4
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %119, %97
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*, %struct.params*) #1

declare dso_local i32 @wep_encrypt(%struct.ieee80211_frame*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
