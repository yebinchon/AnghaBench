; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"hwpstate\00", align 1
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@amd_pminfo = common dso_local global i32 0, align 4
@AMDPM_HW_PSTATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"hwpstate enable bit is not set.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"hwpstate: add child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @hwpstate_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwpstate_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32* @device_find_child(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 -1)
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %37

9:                                                ; preds = %2
  %10 = load i64, i64* @cpu_vendor_id, align 8
  %11 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @cpu_id, align 4
  %15 = call i32 @CPUID_TO_FAMILY(i32 %14)
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  br label %37

18:                                               ; preds = %13
  %19 = load i32, i32* @amd_pminfo, align 4
  %20 = load i32, i32* @AMDPM_HW_PSTATE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @HWPSTATE_DEBUG(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %37

26:                                               ; preds = %18
  %27 = call i64 @resource_disabled(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32* @BUS_ADD_CHILD(i32 %31, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 -1)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %8, %17, %23, %29, %34, %30
  ret void
}

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @HWPSTATE_DEBUG(i32, i8*) #1

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
