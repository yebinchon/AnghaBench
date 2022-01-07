; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amd_pminfo = common dso_local global i32 0, align 4
@AMDPM_FID = common dso_local global i32 0, align 4
@AMDPM_VID = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"powernow\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"powernow: add child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pn_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @amd_pminfo, align 4
  %6 = load i32, i32* @AMDPM_FID, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @amd_pminfo, align 4
  %11 = load i32, i32* @AMDPM_VID, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  br label %32

15:                                               ; preds = %9
  %16 = load i32, i32* @cpu_id, align 4
  %17 = and i32 %16, 3840
  switch i32 %17, label %19 [
    i32 1536, label %18
    i32 3840, label %18
  ]

18:                                               ; preds = %15, %15
  br label %20

19:                                               ; preds = %15
  br label %32

20:                                               ; preds = %18
  %21 = load i32, i32* %4, align 4
  %22 = call i32* @device_find_child(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 -1)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32* @BUS_ADD_CHILD(i32 %26, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 -1)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %14, %19, %24, %29, %25
  ret void
}

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
