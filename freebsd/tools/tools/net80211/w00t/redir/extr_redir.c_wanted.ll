; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_wanted.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_wanted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i8* }
%struct.ieee80211_frame = type { i32*, i8*, i8*, i8* }

@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Got non WEP packet...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wanted(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.params*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.params* %0, %struct.params** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.params*, %struct.params** %5, align 8
  %35 = getelementptr inbounds %struct.params, %struct.params* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @memcmp(i8* %33, i8* %36, i32 6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %60

40:                                               ; preds = %32
  %41 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %60

51:                                               ; preds = %40
  %52 = load %struct.params*, %struct.params** %5, align 8
  %53 = getelementptr inbounds %struct.params, %struct.params* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @memcmp(i8* %54, i8* %55, i32 6)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %60

59:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %58, %49, %39
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
