; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clock.c_tvtohz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clock.c_tvtohz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@LONG_MAX = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tvtohz(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %6 = load %struct.timeval*, %struct.timeval** %2, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.timeval*, %struct.timeval** %2, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, 1000000
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 1, i64* %3, align 8
  br label %59

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @LONG_MAX, align 4
  %26 = sdiv i32 %25, 1000000
  %27 = sext i32 %26 to i64
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = mul nsw i64 %30, 1000000
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %31, %32
  %34 = load i32, i32* @tick, align 4
  %35 = call i64 @howmany(i64 %33, i32 %34)
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %58

37:                                               ; preds = %23
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* @LONG_MAX, align 4
  %40 = load i32, i32* @hz, align 4
  %41 = sdiv i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = icmp sle i64 %38, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* @hz, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %45, %47
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* @tick, align 4
  %51 = call i64 @howmany(i64 %49, i32 %50)
  %52 = add nsw i64 %48, %51
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %57

54:                                               ; preds = %37
  %55 = load i32, i32* @LONG_MAX, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %54, %44
  br label %58

58:                                               ; preds = %57, %29
  br label %59

59:                                               ; preds = %58, %22
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @INT_MAX, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @INT_MAX, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i64, i64* %3, align 8
  %67 = trunc i64 %66 to i32
  ret i32 %67
}

declare dso_local i64 @howmany(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
