; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"acpi_perf\00", align 1
@CPUFREQ_FLAG_INFO_ONLY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"est\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SpeedStep ICH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ichss_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichss_probe(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @device_get_parent(i64 %8)
  %10 = call i64 @device_find_child(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @device_is_attached(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @CPUFREQ_DRV_TYPE(i64 %18, i32* %7)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CPUFREQ_FLAG_INFO_ONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %45

29:                                               ; preds = %22, %17
  br label %30

30:                                               ; preds = %29, %13, %1
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @device_get_parent(i64 %31)
  %33 = call i64 @device_find_child(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @device_is_attached(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %36, %30
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @device_set_desc(i64 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1000, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %40, %27
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_parent(i64) #1

declare dso_local i64 @device_is_attached(i64) #1

declare dso_local i32 @CPUFREQ_DRV_TYPE(i64, i32*) #1

declare dso_local i32 @device_set_desc(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
