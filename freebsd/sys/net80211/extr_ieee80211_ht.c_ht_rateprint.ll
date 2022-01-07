; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_rateprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_rateprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printranges = type { i64, i32, i32, i64, i64 }
%struct.ieee80211com = type { i64, i32 }

@ranges = common dso_local global %struct.printranges* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"MCS %d-%d: %d%sMbps - %d%sMbps\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"MCS %d: %d%sMbps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32)* @ht_rateprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht_rateprint(%struct.ieee80211com* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.printranges*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.printranges*, %struct.printranges** @ranges, align 8
  store %struct.printranges* %10, %struct.printranges** %9, align 8
  br label %11

11:                                               ; preds = %104, %3
  %12 = load %struct.printranges*, %struct.printranges** %9, align 8
  %13 = getelementptr inbounds %struct.printranges, %struct.printranges* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %107

16:                                               ; preds = %11
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.printranges*, %struct.printranges** %9, align 8
  %21 = getelementptr inbounds %struct.printranges, %struct.printranges* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %104

25:                                               ; preds = %16
  %26 = load %struct.printranges*, %struct.printranges** %9, align 8
  %27 = getelementptr inbounds %struct.printranges, %struct.printranges* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.printranges*, %struct.printranges** %9, align 8
  %35 = getelementptr inbounds %struct.printranges, %struct.printranges* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %33, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %104

40:                                               ; preds = %30, %25
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.printranges*, %struct.printranges** %9, align 8
  %43 = getelementptr inbounds %struct.printranges, %struct.printranges* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %104

47:                                               ; preds = %40
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %49 = load %struct.printranges*, %struct.printranges** %9, align 8
  %50 = getelementptr inbounds %struct.printranges, %struct.printranges* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ht_getrate(%struct.ieee80211com* %48, i64 %51, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %56 = load %struct.printranges*, %struct.printranges** %9, align 8
  %57 = getelementptr inbounds %struct.printranges, %struct.printranges* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ht_getrate(%struct.ieee80211com* %55, i64 %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.printranges*, %struct.printranges** %9, align 8
  %63 = getelementptr inbounds %struct.printranges, %struct.printranges* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %47
  %67 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %68 = load %struct.printranges*, %struct.printranges** %9, align 8
  %69 = getelementptr inbounds %struct.printranges, %struct.printranges* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.printranges*, %struct.printranges** %9, align 8
  %72 = getelementptr inbounds %struct.printranges, %struct.printranges* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %7, align 4
  %76 = sdiv i32 %75, 2
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %82 = load i32, i32* %8, align 4
  %83 = sdiv i32 %82, 2
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %89 = call i32 (%struct.ieee80211com*, i8*, i64, i32, ...) @ic_printf(%struct.ieee80211com* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %70, i32 %74, i32 %76, i8* %81, i32 %83, i8* %88)
  br label %103

90:                                               ; preds = %47
  %91 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %92 = load %struct.printranges*, %struct.printranges** %9, align 8
  %93 = getelementptr inbounds %struct.printranges, %struct.printranges* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sdiv i32 %95, 2
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %102 = call i32 (%struct.ieee80211com*, i8*, i64, i32, ...) @ic_printf(%struct.ieee80211com* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %94, i32 %96, i8* %101)
  br label %103

103:                                              ; preds = %90, %66
  br label %104

104:                                              ; preds = %103, %46, %39, %24
  %105 = load %struct.printranges*, %struct.printranges** %9, align 8
  %106 = getelementptr inbounds %struct.printranges, %struct.printranges* %105, i32 1
  store %struct.printranges* %106, %struct.printranges** %9, align 8
  br label %11

107:                                              ; preds = %11
  ret void
}

declare dso_local i32 @ht_getrate(%struct.ieee80211com*, i64, i32, i32) #1

declare dso_local i32 @ic_printf(%struct.ieee80211com*, i8*, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
