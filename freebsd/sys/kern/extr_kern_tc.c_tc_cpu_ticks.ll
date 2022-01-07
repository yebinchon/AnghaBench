; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_cpu_ticks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_cpu_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.timecounter* }
%struct.timecounter = type { i32 (%struct.timecounter*)*, i32 }

@tc_cpu_ticks_base = common dso_local global i32 0, align 4
@tc_cpu_ticks_last = common dso_local global i32 0, align 4
@timehands = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @tc_cpu_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tc_cpu_ticks() #0 {
  %1 = alloca %struct.timecounter*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = call i32 (...) @critical_enter()
  %7 = load i32, i32* @tc_cpu_ticks_base, align 4
  %8 = call i8* @DPCPU_PTR(i32 %7)
  %9 = bitcast i8* %8 to i64*
  store i64* %9, i64** %3, align 8
  %10 = load i32, i32* @tc_cpu_ticks_last, align 4
  %11 = call i8* @DPCPU_PTR(i32 %10)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timehands, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.timecounter*, %struct.timecounter** %14, align 8
  store %struct.timecounter* %15, %struct.timecounter** %1, align 8
  %16 = load %struct.timecounter*, %struct.timecounter** %1, align 8
  %17 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %16, i32 0, i32 0
  %18 = load i32 (%struct.timecounter*)*, i32 (%struct.timecounter*)** %17, align 8
  %19 = load %struct.timecounter*, %struct.timecounter** %1, align 8
  %20 = call i32 %18(%struct.timecounter* %19)
  %21 = load %struct.timecounter*, %struct.timecounter** %1, align 8
  %22 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %0
  %30 = load %struct.timecounter*, %struct.timecounter** %1, align 8
  %31 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %33, 1
  %35 = load i64*, i64** %3, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %34
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %29, %0
  %39 = load i32, i32* %4, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64*, i64** %3, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %42, %44
  store i64 %45, i64* %2, align 8
  %46 = call i32 (...) @critical_exit()
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i8* @DPCPU_PTR(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
