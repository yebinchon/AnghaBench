; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"est\00", align 1
@cpu_high = common dso_local global i64 0, align 8
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@CPU_VENDOR_CENTAUR = common dso_local global i64 0, align 8
@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_EST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"add est child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @est_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @est_identify(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32* @device_find_child(i32* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1)
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %36

10:                                               ; preds = %2
  %11 = load i64, i64* @cpu_high, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @cpu_vendor_id, align 8
  %15 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i64, i64* @cpu_vendor_id, align 8
  %19 = load i64, i64* @CPU_VENDOR_CENTAUR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %10
  br label %36

22:                                               ; preds = %17, %13
  %23 = load i32, i32* @cpu_feature2, align 4
  %24 = load i32, i32* @CPUID2_EST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %36

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @BUS_ADD_CHILD(i32* %29, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @device_printf(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %9, %21, %27, %33, %28
  ret void
}

declare dso_local i32* @device_find_child(i32*, i8*, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
