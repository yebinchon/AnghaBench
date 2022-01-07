; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_possible_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_possible_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Addr1 doesn't match\0A\00", align 1
@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @possible_match(%struct.ieee80211_frame* %0, i32 %1, %struct.ieee80211_frame* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_frame*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_frame* %2, %struct.ieee80211_frame** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %90

14:                                               ; preds = %4
  %15 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @memcmp(i32 %17, i32 %20, i32 6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %14
  %26 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %32, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %90

42:                                               ; preds = %25
  %43 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %51 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %90

59:                                               ; preds = %42
  %60 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %90

70:                                               ; preds = %59
  %71 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %75 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @memcmp(i32 %73, i32 %76, i32 6)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @memcmp(i32 %82, i32 %85, i32 6)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  br label %90

89:                                               ; preds = %79, %70
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %88, %69, %58, %41, %13
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
