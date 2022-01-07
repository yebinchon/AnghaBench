; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_apply_filter_max_small.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_apply_filter_max_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_filter_small = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@NUM_FILTER_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @apply_filter_max_small(%struct.time_filter_small* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.time_filter_small*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.time_filter_small* %0, %struct.time_filter_small** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.time_filter_small*, %struct.time_filter_small** %5, align 8
  %12 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %10, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.time_filter_small*, %struct.time_filter_small** %5, align 8
  %26 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %24, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.time_filter_small*, %struct.time_filter_small** %5, align 8
  %34 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 %32, i64* %39, align 8
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %19

43:                                               ; preds = %19
  %44 = load %struct.time_filter_small*, %struct.time_filter_small** %5, align 8
  %45 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %4, align 8
  br label %108

50:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %94, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %97

55:                                               ; preds = %51
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.time_filter_small*, %struct.time_filter_small** %5, align 8
  %58 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %56, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %89, %66
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.time_filter_small*, %struct.time_filter_small** %5, align 8
  %75 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i64 %73, i64* %80, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.time_filter_small*, %struct.time_filter_small** %5, align 8
  %83 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i64 %81, i64* %88, align 8
  br label %89

89:                                               ; preds = %72
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %68

92:                                               ; preds = %68
  br label %97

93:                                               ; preds = %55
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %51

97:                                               ; preds = %92, %51
  %98 = load %struct.time_filter_small*, %struct.time_filter_small** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @check_update_times_small(%struct.time_filter_small* %98, i64 %99, i64 %100)
  %102 = load %struct.time_filter_small*, %struct.time_filter_small** %5, align 8
  %103 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %4, align 8
  br label %108

108:                                              ; preds = %97, %43
  %109 = load i64, i64* %4, align 8
  ret i64 %109
}

declare dso_local i32 @check_update_times_small(%struct.time_filter_small*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
