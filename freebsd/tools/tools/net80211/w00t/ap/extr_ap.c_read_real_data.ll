; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_real_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_real_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32 }
%struct.ieee80211_frame = type { i8*, i8*, i32*, i8* }

@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Got wep but i aint wep\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Can't decrypt\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Wrote %d/%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_real_data(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.params*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.params* %0, %struct.params** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %10, i64 1
  %12 = bitcast %struct.ieee80211_frame* %11 to i8*
  store i8* %12, i8** %9, align 8
  %13 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.params*, %struct.params** %4, align 8
  %17 = getelementptr inbounds %struct.params, %struct.params* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @memcmp(i8* %15, i32 %18, i32 6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %117

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.params*, %struct.params** %4, align 8
  %27 = getelementptr inbounds %struct.params, %struct.params* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @memcmp(i8* %25, i32 %28, i32 6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.params*, %struct.params** %4, align 8
  %33 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @relay_data(%struct.params* %32, %struct.ieee80211_frame* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %38 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @memcpy(i8* %37, i8* %40, i32 6)
  %42 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %36
  %51 = load %struct.params*, %struct.params** %4, align 8
  %52 = getelementptr inbounds %struct.params, %struct.params* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %117

57:                                               ; preds = %50
  %58 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.params*, %struct.params** %4, align 8
  %61 = getelementptr inbounds %struct.params, %struct.params* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.params*, %struct.params** %4, align 8
  %64 = getelementptr inbounds %struct.params, %struct.params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wep_decrypt(%struct.ieee80211_frame* %58, i32 %59, i32 %62, i32 %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %117

70:                                               ; preds = %57
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  store i8* %72, i8** %9, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 8
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %36
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 6
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 -6
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @memcpy(i8* %80, i8* %83, i32 6)
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -6
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %89 = call i32 @memcpy(i8* %87, i8* %88, i32 6)
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 %91, 32
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %94, 8
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 14
  store i32 %97, i32* %6, align 4
  %98 = load %struct.params*, %struct.params** %4, align 8
  %99 = getelementptr inbounds %struct.params, %struct.params* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @write(i32 %100, i8* %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %75
  %107 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %75
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %114)
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %21, %55, %68, %108
  ret void
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @relay_data(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @wep_decrypt(%struct.ieee80211_frame*, i32, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
