; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_tsc_levels_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_tsc_levels_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_level = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"tsc_levels_changed() called but no cpufreq device?\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@rdtsc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"tsc_levels_changed: no max freq found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @tsc_levels_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsc_levels_changed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cf_level*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %58

13:                                               ; preds = %2
  %14 = call i32 @devclass_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = call i32* @devclass_get_device(i32 %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %58

21:                                               ; preds = %13
  store i32 64, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_TEMP, align 4
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = call %struct.cf_level* @malloc(i32 %25, i32 %26, i32 %27)
  store %struct.cf_level* %28, %struct.cf_level** %6, align 8
  %29 = load %struct.cf_level*, %struct.cf_level** %6, align 8
  %30 = icmp eq %struct.cf_level* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %58

32:                                               ; preds = %21
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.cf_level*, %struct.cf_level** %6, align 8
  %35 = call i32 @CPUFREQ_LEVELS(i32* %33, %struct.cf_level* %34, i32* %7)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.cf_level*, %struct.cf_level** %6, align 8
  %43 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %42, i64 0
  %44 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = mul nsw i32 %47, 1000000
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @rdtsc, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @set_cputicker(i32 %49, i32 %50, i32 1)
  br label %54

52:                                               ; preds = %38, %32
  %53 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %41
  %55 = load %struct.cf_level*, %struct.cf_level** %6, align 8
  %56 = load i32, i32* @M_TEMP, align 4
  %57 = call i32 @free(%struct.cf_level* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %31, %19, %12
  ret void
}

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.cf_level* @malloc(i32, i32, i32) #1

declare dso_local i32 @CPUFREQ_LEVELS(i32*, %struct.cf_level*, i32*) #1

declare dso_local i32 @set_cputicker(i32, i32, i32) #1

declare dso_local i32 @free(%struct.cf_level*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
