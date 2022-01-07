; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32 }
%struct.ieee80211_frame = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"weird pr %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Assoc request for [%s] from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_assoc(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.params*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [18 x i8], align 16
  store %struct.params* %0, %struct.params** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.params*, %struct.params** %4, align 8
  %14 = getelementptr inbounds %struct.params, %struct.params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @memcmp(i32 %12, i32 %15, i32 6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %20, i64 1
  %22 = bitcast %struct.ieee80211_frame* %21 to i8*
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %69

36:                                               ; preds = %19
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  %49 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %50 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mac2str(i8* %49, i32 %52)
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.params*, %struct.params** %4, align 8
  %59 = getelementptr inbounds %struct.params, %struct.params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strcmp(i8* %57, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %36
  %64 = load %struct.params*, %struct.params** %4, align 8
  %65 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @send_assoc(%struct.params* %64, i32 %67)
  br label %69

69:                                               ; preds = %18, %31, %63, %36
  ret void
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mac2str(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @send_assoc(%struct.params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
