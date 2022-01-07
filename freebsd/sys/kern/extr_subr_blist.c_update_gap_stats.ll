; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_update_gap_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_update_gap_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gap_stats = type { i64, i64, i32, i32, i64, i32, i32* }

@SWAPBLK_NONE = common dso_local global i64 0, align 8
@fib = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gap_stats*, i64)* @update_gap_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gap_stats(%struct.gap_stats* %0, i64 %1) #0 {
  %3 = alloca %struct.gap_stats*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gap_stats* %0, %struct.gap_stats** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %10 = call i32 @gap_stats_counting(%struct.gap_stats* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %15 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %138

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %19 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* @SWAPBLK_NONE, align 8
  %23 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %24 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %27 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %33 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %16
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i64*, i64** @fib, align 8
  %38 = call i32 @nitems(i64* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i64*, i64** @fib, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp sle i64 %45, %46
  br label %48

48:                                               ; preds = %40, %35
  %49 = phi i1 [ false, %35 ], [ %47, %40 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %52, 2
  store i32 %53, i32* %6, align 4
  br label %35

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = load i64*, i64** @fib, align 8
  %57 = call i32 @nitems(i64* %56)
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i64*, i64** @fib, align 8
  %61 = call i32 @nitems(i64* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %84, %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %69, %70
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = load i64*, i64** @fib, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp sle i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %7, align 4
  br label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %80
  br label %63

85:                                               ; preds = %63
  %86 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %87 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %96 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %85
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %102 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %85
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %106 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %110 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %108
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  %115 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %116 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %120 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %123 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = sdiv i32 %121, %124
  %126 = sext i32 %125 to i64
  %127 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %128 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %132 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.gap_stats*, %struct.gap_stats** %3, align 8
  %135 = getelementptr inbounds %struct.gap_stats, %struct.gap_stats* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = srem i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %103, %12
  ret void
}

declare dso_local i32 @gap_stats_counting(%struct.gap_stats*) #1

declare dso_local i32 @nitems(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
