; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_preq.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_preq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8* }
%struct.ieee80211_frame = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"weird pr %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Probe request for [%s] from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_preq(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %10, i64 1
  %12 = bitcast %struct.ieee80211_frame* %11 to i8*
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %59

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  %35 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %36 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mac2str(i8* %35, i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %22
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.params*, %struct.params** %4, align 8
  %49 = getelementptr inbounds %struct.params, %struct.params* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %47, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46, %22
  %54 = load %struct.params*, %struct.params** %4, align 8
  %55 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @send_pres(%struct.params* %54, i32 %57)
  br label %59

59:                                               ; preds = %17, %53, %46
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mac2str(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @send_pres(%struct.params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
