; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_tick_filter_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_tick_filter_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_filter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NUM_FILTER_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_filter_clock(%struct.time_filter* %0, i32 %1) #0 {
  %3 = alloca %struct.time_filter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.time_filter* %0, %struct.time_filter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %9 = sub nsw i32 %8, 2
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %70, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %73

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.time_filter*, %struct.time_filter** %3, align 8
  %16 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %14, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.time_filter*, %struct.time_filter** %3, align 8
  %25 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %27, %28
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %13
  %37 = load %struct.time_filter*, %struct.time_filter** %3, align 8
  %38 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.time_filter*, %struct.time_filter** %3, align 8
  %47 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 4
  %53 = load %struct.time_filter*, %struct.time_filter** %3, align 8
  %54 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.time_filter*, %struct.time_filter** %3, align 8
  %63 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %36, %13
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %5, align 4
  br label %10

73:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
