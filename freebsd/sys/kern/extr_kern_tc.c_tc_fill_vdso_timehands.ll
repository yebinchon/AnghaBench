; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_fill_vdso_timehands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_fill_vdso_timehands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehands = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.vdso_timehands*, %struct.TYPE_2__*)*, i32 }
%struct.vdso_timehands = type { i32, i32, i32, i32, i32 }

@timehands = common dso_local global %struct.timehands* null, align 8
@vdso_th_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tc_fill_vdso_timehands(%struct.vdso_timehands* %0) #0 {
  %2 = alloca %struct.vdso_timehands*, align 8
  %3 = alloca %struct.timehands*, align 8
  %4 = alloca i64, align 8
  store %struct.vdso_timehands* %0, %struct.vdso_timehands** %2, align 8
  %5 = load %struct.timehands*, %struct.timehands** @timehands, align 8
  store %struct.timehands* %5, %struct.timehands** %3, align 8
  %6 = load %struct.timehands*, %struct.timehands** %3, align 8
  %7 = getelementptr inbounds %struct.timehands, %struct.timehands* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vdso_timehands*, %struct.vdso_timehands** %2, align 8
  %10 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.timehands*, %struct.timehands** %3, align 8
  %12 = getelementptr inbounds %struct.timehands, %struct.timehands* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vdso_timehands*, %struct.vdso_timehands** %2, align 8
  %15 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.timehands*, %struct.timehands** %3, align 8
  %17 = getelementptr inbounds %struct.timehands, %struct.timehands* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vdso_timehands*, %struct.vdso_timehands** %2, align 8
  %22 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.timehands*, %struct.timehands** %3, align 8
  %24 = getelementptr inbounds %struct.timehands, %struct.timehands* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vdso_timehands*, %struct.vdso_timehands** %2, align 8
  %27 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.timehands*, %struct.timehands** %3, align 8
  %29 = getelementptr inbounds %struct.timehands, %struct.timehands* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vdso_timehands*, %struct.vdso_timehands** %2, align 8
  %32 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.timehands*, %struct.timehands** %3, align 8
  %34 = getelementptr inbounds %struct.timehands, %struct.timehands* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64 (%struct.vdso_timehands*, %struct.TYPE_2__*)*, i64 (%struct.vdso_timehands*, %struct.TYPE_2__*)** %36, align 8
  %38 = icmp ne i64 (%struct.vdso_timehands*, %struct.TYPE_2__*)* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %1
  %40 = load %struct.timehands*, %struct.timehands** %3, align 8
  %41 = getelementptr inbounds %struct.timehands, %struct.timehands* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64 (%struct.vdso_timehands*, %struct.TYPE_2__*)*, i64 (%struct.vdso_timehands*, %struct.TYPE_2__*)** %43, align 8
  %45 = load %struct.vdso_timehands*, %struct.vdso_timehands** %2, align 8
  %46 = load %struct.timehands*, %struct.timehands** %3, align 8
  %47 = getelementptr inbounds %struct.timehands, %struct.timehands* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i64 %44(%struct.vdso_timehands* %45, %struct.TYPE_2__* %48)
  store i64 %49, i64* %4, align 8
  br label %51

50:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* @vdso_th_enable, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i64 0, i64* %4, align 8
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
