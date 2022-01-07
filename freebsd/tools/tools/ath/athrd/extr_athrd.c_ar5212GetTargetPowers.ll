; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_ar5212GetTargetPowers.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_ar5212GetTargetPowers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8* }

@NUM_TEST_FREQUENCIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*, %struct.TYPE_4__*, i32, %struct.TYPE_4__*)* @ar5212GetTargetPowers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5212GetTargetPowers(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, %struct.TYPE_4__* %2, i32 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %18 = load i32, i32* @NUM_TEST_FREQUENCIES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %36, %5
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = load i32, i32* %17, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %21, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %17, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %17, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ar5212GetLowerUpperValues(i32 %42, i32* %21, i32 %43, i32* %13, i32* %14)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %45

45:                                               ; preds = %68, %39
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %21, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %21, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %16, align 4
  br label %71

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %45

71:                                               ; preds = %65, %45
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @interpolate(i32 %74, i32 %75, i32 %76, i8* %82, i8* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %93 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @interpolate(i32 %94, i32 %95, i32 %96, i8* %102, i8* %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %113 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @interpolate(i32 %114, i32 %115, i32 %116, i8* %122, i8* %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @interpolate(i32 %134, i32 %135, i32 %136, i8* %142, i8* %148)
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %152)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ar5212GetLowerUpperValues(i32, i32*, i32, i32*, i32*) #2

declare dso_local i8* @interpolate(i32, i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
