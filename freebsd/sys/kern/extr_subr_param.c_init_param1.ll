; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_param.c_init_param1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_param.c_init_param1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"kern.kstack_pages\00", align 1
@kstack_pages = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"kern.hz\00", align 1
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_NO = common dso_local global i64 0, align 8
@HZ_VM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@tick_sbt = common dso_local global i32 0, align 4
@tick_bt = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@ticks = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"kern.maxswzone\00", align 1
@maxswzone = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"kern.maxbcache\00", align 1
@maxbcache = common dso_local global i32 0, align 4
@MSGBUF_SIZE = common dso_local global i32 0, align 4
@msgbufsize = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"kern.msgbufsize\00", align 1
@MAXTSIZ = common dso_local global i32 0, align 4
@maxtsiz = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"kern.maxtsiz\00", align 1
@DFLDSIZ = common dso_local global i32 0, align 4
@dfldsiz = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"kern.dfldsiz\00", align 1
@MAXDSIZ = common dso_local global i32 0, align 4
@maxdsiz = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"kern.maxdsiz\00", align 1
@DFLSSIZ = common dso_local global i32 0, align 4
@dflssiz = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"kern.dflssiz\00", align 1
@MAXSSIZ = common dso_local global i32 0, align 4
@maxssiz = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"kern.maxssiz\00", align 1
@SGROWSIZ = common dso_local global i32 0, align 4
@sgrowsiz = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"kern.sgrowsiz\00", align 1
@NGROUPS_MAX = common dso_local global i64 0, align 8
@ngroups_max = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"kern.ngroups\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"kern.pid_max\00", align 1
@pid_max = common dso_local global i32 0, align 4
@PID_MAX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"vfs.unmapped_buf_allowed\00", align 1
@unmapped_buf_allowed = common dso_local global i32 0, align 4
@VM_BCACHE_SIZE_MAX = common dso_local global i32 0, align 4
@VM_SWZONE_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_param1() #0 {
  %1 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* @kstack_pages)
  store i32 -1, i32* @hz, align 4
  %2 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* @hz)
  %3 = load i32, i32* @hz, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i64, i64* @vm_guest, align 8
  %7 = load i64, i64* @VM_GUEST_NO, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, i32* @HZ_VM, align 4
  br label %13

11:                                               ; preds = %5
  %12 = load i32, i32* @HZ, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* @hz, align 4
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, i32* @hz, align 4
  %17 = sdiv i32 1000000, %16
  store i32 %17, i32* @tick, align 4
  %18 = load i32, i32* @SBT_1S, align 4
  %19 = load i32, i32* @hz, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* @tick_sbt, align 4
  %21 = load i32, i32* @tick_sbt, align 4
  %22 = call i32 @sbttobt(i32 %21)
  store i32 %22, i32* @tick_bt, align 4
  %23 = load i64, i64* @INT_MAX, align 8
  %24 = load i32, i32* @hz, align 4
  %25 = mul nsw i32 %24, 10
  %26 = mul nsw i32 %25, 60
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %23, %27
  store i64 %28, i64* @ticks, align 8
  %29 = call i32 @TUNABLE_LONG_FETCH(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* @maxswzone)
  %30 = call i32 @TUNABLE_LONG_FETCH(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* @maxbcache)
  %31 = load i32, i32* @MSGBUF_SIZE, align 4
  store i32 %31, i32* @msgbufsize, align 4
  %32 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* @msgbufsize)
  %33 = load i32, i32* @MAXTSIZ, align 4
  store i32 %33, i32* @maxtsiz, align 4
  %34 = call i32 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* @maxtsiz)
  %35 = load i32, i32* @DFLDSIZ, align 4
  store i32 %35, i32* @dfldsiz, align 4
  %36 = call i32 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* @dfldsiz)
  %37 = load i32, i32* @MAXDSIZ, align 4
  store i32 %37, i32* @maxdsiz, align 4
  %38 = call i32 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* @maxdsiz)
  %39 = load i32, i32* @DFLSSIZ, align 4
  store i32 %39, i32* @dflssiz, align 4
  %40 = call i32 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* @dflssiz)
  %41 = load i32, i32* @MAXSSIZ, align 4
  store i32 %41, i32* @maxssiz, align 4
  %42 = call i32 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* @maxssiz)
  %43 = load i32, i32* @SGROWSIZ, align 4
  store i32 %43, i32* @sgrowsiz, align 4
  %44 = call i32 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32* @sgrowsiz)
  %45 = load i64, i64* @NGROUPS_MAX, align 8
  store i64 %45, i64* @ngroups_max, align 8
  %46 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64* @ngroups_max)
  %47 = load i64, i64* @ngroups_max, align 8
  %48 = load i64, i64* @NGROUPS_MAX, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %15
  %51 = load i64, i64* @NGROUPS_MAX, align 8
  store i64 %51, i64* @ngroups_max, align 8
  br label %52

52:                                               ; preds = %50, %15
  %53 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* @pid_max)
  %54 = load i32, i32* @pid_max, align 4
  %55 = load i32, i32* @PID_MAX, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @PID_MAX, align 4
  store i32 %58, i32* @pid_max, align 4
  br label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @pid_max, align 4
  %61 = icmp slt i32 %60, 300
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 300, i32* @pid_max, align 4
  br label %63

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %57
  %65 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32* @unmapped_buf_allowed)
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, ...) #1

declare dso_local i32 @sbttobt(i32) #1

declare dso_local i32 @TUNABLE_LONG_FETCH(i8*, i32*) #1

declare dso_local i32 @TUNABLE_ULONG_FETCH(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
