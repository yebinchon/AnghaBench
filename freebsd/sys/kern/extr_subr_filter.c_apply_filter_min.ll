; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_apply_filter_min.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_apply_filter_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8* }

@NUM_FILTER_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @apply_filter_min(%struct.time_filter* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.time_filter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.time_filter* %0, %struct.time_filter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %12 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %10, %16
  br i1 %17, label %18, label %51

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
  %25 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %26 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %24, i64* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %34 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %32, i8** %39, align 8
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %19

43:                                               ; preds = %19
  %44 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %45 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %4, align 8
  br label %110

51:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %95, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %59 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %57, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %90, %67
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %76 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i64 %74, i64* %81, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %84 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i8* %82, i8** %89, align 8
  br label %90

90:                                               ; preds = %73
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %69

93:                                               ; preds = %69
  br label %98

94:                                               ; preds = %56
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %52

98:                                               ; preds = %93, %52
  %99 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @check_update_times(%struct.time_filter* %99, i64 %100, i8* %101)
  %103 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %104 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  store i8* %109, i8** %4, align 8
  br label %110

110:                                              ; preds = %98, %43
  %111 = load i8*, i8** %4, align 8
  ret i8* %111
}

declare dso_local i32 @check_update_times(%struct.time_filter*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
