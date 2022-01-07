; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_setup_time_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_setup_time_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_filter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@FILTER_TYPE_MIN = common dso_local global i32 0, align 4
@FILTER_TYPE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUM_FILTER_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_time_filter(%struct.time_filter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.time_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.time_filter* %0, %struct.time_filter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @FILTER_TYPE_MIN, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FILTER_TYPE_MAX, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FILTER_TYPE_MIN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %8, align 4
  br label %31

30:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %29
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %39 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 8
  %45 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %46 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.time_filter*, %struct.time_filter** %5, align 8
  %58 = getelementptr inbounds %struct.time_filter, %struct.time_filter* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %23, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
