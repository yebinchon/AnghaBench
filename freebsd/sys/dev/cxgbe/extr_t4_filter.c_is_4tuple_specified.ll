; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_is_4tuple_specified.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_is_4tuple_specified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_filter_specification = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_filter_specification*)* @is_4tuple_specified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_4tuple_specified(%struct.t4_filter_specification* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.t4_filter_specification*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.t4_filter_specification* %0, %struct.t4_filter_specification** %3, align 8
  %6 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %3, align 8
  %7 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 16, i32 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %3, align 8
  %13 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 65535
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %3, align 8
  %19 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 65535
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %56

24:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %3, align 8
  %31 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %56

40:                                               ; preds = %29
  %41 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %3, align 8
  %42 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 255
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %25

55:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %50, %39, %23
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
