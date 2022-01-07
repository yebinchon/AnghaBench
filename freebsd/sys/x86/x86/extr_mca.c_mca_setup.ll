; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@amd10h_L1TP = common dso_local global i64 0, align 8
@workaround_erratum383 = common dso_local global i32 0, align 4
@MCG_CAP_COUNT = common dso_local global i32 0, align 4
@mca_banks = common dso_local global i32 0, align 4
@mca_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mca\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@mca_records = common dso_local global i32 0, align 4
@mca_pending = common dso_local global i32 0, align 4
@mca_scan_task = common dso_local global i32 0, align 4
@mca_scan_cpus = common dso_local global i32 0, align 4
@mca_timer = common dso_local global i32 0, align 4
@mca_freelist = common dso_local global i32 0, align 4
@mca_resize_task = common dso_local global i32 0, align 4
@mca_resize = common dso_local global i32 0, align 4
@_hw_mca = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@mca_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Record count\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"maxcount\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@mca_maxcount = common dso_local global i32 0, align 4
@sysctl_mca_maxcount = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Maximum record count (-1 is unlimited)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@mca_ticks = common dso_local global i32 0, align 4
@sysctl_positive_int = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"Periodic interval in seconds to scan for machine checks\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"records\00", align 1
@sysctl_mca_records = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Machine check records\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"force_scan\00", align 1
@sysctl_mca_scan = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"Force an immediate scan for machine checks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mca_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @cpu_vendor_id, align 8
  %4 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* @cpu_id, align 4
  %8 = call i32 @CPUID_TO_FAMILY(i32 %7)
  %9 = icmp eq i32 %8, 16
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i64, i64* @amd10h_L1TP, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* @workaround_erratum383, align 4
  br label %14

14:                                               ; preds = %13, %10, %6, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @MCG_CAP_COUNT, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* @mca_banks, align 4
  %18 = load i32, i32* @MTX_SPIN, align 4
  %19 = call i32 @mtx_init(i32* @mca_lock, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %18)
  %20 = call i32 @STAILQ_INIT(i32* @mca_records)
  %21 = call i32 @STAILQ_INIT(i32* @mca_pending)
  %22 = load i32, i32* @mca_scan_cpus, align 4
  %23 = call i32 @TASK_INIT(i32* @mca_scan_task, i32 0, i32 %22, i32* null)
  %24 = call i32 @callout_init(i32* @mca_timer, i32 1)
  %25 = call i32 @STAILQ_INIT(i32* @mca_freelist)
  %26 = load i32, i32* @mca_resize, align 4
  %27 = call i32 @TASK_INIT(i32* @mca_resize_task, i32 0, i32 %26, i32* null)
  %28 = call i32 (...) @mca_resize_freelist()
  %29 = load i32, i32* @_hw_mca, align 4
  %30 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %29)
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i32, i32* @CTLFLAG_RD, align 4
  %33 = call i32 @SYSCTL_ADD_INT(i32* null, i32 %30, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32* @mca_count, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @_hw_mca, align 4
  %35 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %34)
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLTYPE_INT, align 4
  %38 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @sysctl_mca_maxcount, align 4
  %43 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32* @mca_maxcount, i32 0, i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32, i32* @_hw_mca, align 4
  %45 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %44)
  %46 = load i32, i32* @OID_AUTO, align 4
  %47 = load i32, i32* @CTLTYPE_INT, align 4
  %48 = load i32, i32* @CTLFLAG_RW, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @sysctl_positive_int, align 4
  %53 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %51, i32* @mca_ticks, i32 0, i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i32, i32* @_hw_mca, align 4
  %55 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %54)
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = load i32, i32* @sysctl_mca_records, align 4
  %59 = call i32 @SYSCTL_ADD_NODE(i32* null, i32 %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %57, i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %60 = load i32, i32* @_hw_mca, align 4
  %61 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %60)
  %62 = load i32, i32* @OID_AUTO, align 4
  %63 = load i32, i32* @CTLTYPE_INT, align 4
  %64 = load i32, i32* @CTLFLAG_RW, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @sysctl_mca_scan, align 4
  %69 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %61, i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %67, i32* null, i32 0, i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @mca_resize_freelist(...) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
