; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_tap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8, i32, i32, i32 }
%struct.ieee80211_frame = type { i8*, i8*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"read()\00", align 1
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_tap(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca %struct.ieee80211_frame*, align 8
  %10 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  store i32 4096, i32* %5, align 4
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  store i8* %11, i8** %4, align 8
  store i32 18, i32* %6, align 4
  %12 = load %struct.params*, %struct.params** %2, align 8
  %13 = getelementptr inbounds %struct.params, %struct.params* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 0, i32 4096)
  %29 = load %struct.params*, %struct.params** %2, align 8
  %30 = getelementptr inbounds %struct.params, %struct.params* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @read(i32 %31, i8* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %19
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %41 = bitcast i8* %40 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %41, %struct.ieee80211_frame** %9, align 8
  %42 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @memcpy(i8* %42, i8* %43, i32 6)
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 6
  %48 = call i32 @memcpy(i8* %45, i8* %47, i32 6)
  %49 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %50 = load %struct.params*, %struct.params** %2, align 8
  %51 = call i32 @fill_basic(%struct.ieee80211_frame* %49, %struct.params* %50)
  %52 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %56 = call i32 @memcpy(i8* %54, i8* %55, i32 8)
  %57 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %61 = call i32 @memcpy(i8* %59, i8* %60, i32 8)
  %62 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %63 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @IEEE80211_FC1_DIR_FROMDS, align 4
  %70 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %71 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  %76 = load %struct.params*, %struct.params** %2, align 8
  %77 = getelementptr inbounds %struct.params, %struct.params* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %39
  %81 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %82 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %83 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %39
  %89 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %89, i64 1
  %91 = bitcast %struct.ieee80211_frame* %90 to i8*
  store i8* %91, i8** %4, align 8
  %92 = load %struct.params*, %struct.params** %2, align 8
  %93 = getelementptr inbounds %struct.params, %struct.params* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  store i8* %98, i8** %4, align 8
  br label %99

99:                                               ; preds = %96, %88
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %4, align 8
  store i8 -86, i8* %100, align 1
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %4, align 8
  store i8 -86, i8* %102, align 1
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %4, align 8
  store i8 3, i8* %104, align 1
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %4, align 8
  store i8 0, i8* %106, align 1
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  store i8 0, i8* %108, align 1
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %4, align 8
  store i8 0, i8* %110, align 1
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = load %struct.params*, %struct.params** %2, align 8
  %116 = getelementptr inbounds %struct.params, %struct.params* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %144

119:                                              ; preds = %99
  %120 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %121 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %120, i64 1
  %122 = bitcast %struct.ieee80211_frame* %121 to i8*
  store i8* %122, i8** %4, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = load %struct.params*, %struct.params** %2, align 8
  %125 = getelementptr inbounds %struct.params, %struct.params* %124, i32 0, i32 0
  %126 = call i32 @memcpy(i8* %123, i8* %125, i32 3)
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 3
  store i8 0, i8* %128, align 1
  %129 = load %struct.params*, %struct.params** %2, align 8
  %130 = getelementptr inbounds %struct.params, %struct.params* %129, i32 0, i32 0
  %131 = load i8, i8* %130, align 4
  %132 = add i8 %131, 1
  store i8 %132, i8* %130, align 4
  %133 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.params*, %struct.params** %2, align 8
  %136 = getelementptr inbounds %struct.params, %struct.params* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.params*, %struct.params** %2, align 8
  %139 = getelementptr inbounds %struct.params, %struct.params* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @wep_encrypt(%struct.ieee80211_frame* %133, i32 %134, i32 %137, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %119, %99
  %145 = load %struct.params*, %struct.params** %2, align 8
  %146 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @send_frame(%struct.params* %145, %struct.ieee80211_frame* %146, i32 %147)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*, %struct.params*) #1

declare dso_local i32 @wep_encrypt(%struct.ieee80211_frame*, i32, i32, i32) #1

declare dso_local i32 @send_frame(%struct.params*, %struct.ieee80211_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
