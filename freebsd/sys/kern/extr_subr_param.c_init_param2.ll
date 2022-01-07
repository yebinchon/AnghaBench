; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_param.c_init_param2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_param.c_init_param2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXUSERS = common dso_local global i32 0, align 4
@maxusers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"kern.maxusers\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@NPROC = common dso_local global i64 0, align 8
@maxproc = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"kern.maxproc\00", align 1
@pid_max = common dso_local global i64 0, align 8
@maxprocperuid = common dso_local global i64 0, align 8
@MAXFILES = common dso_local global i32 0, align 4
@maxfiles = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"kern.maxfiles\00", align 1
@maxfilesperproc = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"kern.maxfilesperproc\00", align 1
@NBUF = common dso_local global i64 0, align 8
@nbuf = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"kern.nbuf\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"kern.bio_transient_maxcnt\00", align 1
@bio_transient_maxcnt = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"kern.nswbuf\00", align 1
@nswbuf = common dso_local global i64 0, align 8
@maxpipekva = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"kern.ipc.maxpipekva\00", align 1
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@VM_MAX_AUTOTUNE_MAXUSERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_param2(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @MAXUSERS, align 4
  store i32 %3, i32* @maxusers, align 4
  %4 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* @maxusers)
  %5 = load i32, i32* @maxusers, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = sdiv i32 2097152, %9
  %11 = sext i32 %10 to i64
  %12 = sdiv i64 %8, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @maxusers, align 4
  %14 = load i32, i32* @maxusers, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  store i32 32, i32* @maxusers, align 4
  br label %17

17:                                               ; preds = %16, %7
  %18 = load i32, i32* @maxusers, align 4
  %19 = icmp sgt i32 %18, 384
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @maxusers, align 4
  %22 = sub nsw i32 %21, 384
  %23 = sdiv i32 %22, 8
  %24 = add nsw i32 384, %23
  store i32 %24, i32* @maxusers, align 4
  br label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i64, i64* @NPROC, align 8
  store i64 %27, i64* @maxproc, align 8
  %28 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* @maxproc)
  %29 = load i64, i64* @maxproc, align 8
  %30 = load i64, i64* %2, align 8
  %31 = sdiv i64 %30, 12
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i64, i64* %2, align 8
  %35 = sdiv i64 %34, 12
  store i64 %35, i64* @maxproc, align 8
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i64, i64* @maxproc, align 8
  %38 = load i64, i64* @pid_max, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @pid_max, align 8
  store i64 %41, i64* @maxproc, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i64, i64* @maxproc, align 8
  %44 = mul nsw i64 %43, 9
  %45 = sdiv i64 %44, 10
  store i64 %45, i64* @maxprocperuid, align 8
  %46 = load i32, i32* @MAXFILES, align 4
  %47 = load i64, i64* %2, align 8
  %48 = sdiv i64 %47, 8
  %49 = call i64 @imax(i32 %46, i64 %48)
  store i64 %49, i64* @maxfiles, align 8
  %50 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64* @maxfiles)
  %51 = load i64, i64* @maxfiles, align 8
  %52 = load i64, i64* %2, align 8
  %53 = sdiv i64 %52, 4
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i64, i64* %2, align 8
  %57 = sdiv i64 %56, 4
  store i64 %57, i64* @maxfiles, align 8
  br label %58

58:                                               ; preds = %55, %42
  %59 = load i64, i64* @maxfiles, align 8
  %60 = sdiv i64 %59, 10
  %61 = mul nsw i64 %60, 9
  store i64 %61, i64* @maxfilesperproc, align 8
  %62 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64* @maxfilesperproc)
  %63 = load i64, i64* @NBUF, align 8
  store i64 %63, i64* @nbuf, align 8
  %64 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64* @nbuf)
  %65 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64* @bio_transient_maxcnt)
  %66 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64* @nswbuf)
  %67 = load i64, i64* %2, align 8
  %68 = sdiv i64 %67, 64
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %68, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* @maxpipekva, align 4
  %73 = call i32 @TUNABLE_LONG_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* @maxpipekva)
  %74 = load i32, i32* @maxpipekva, align 4
  %75 = icmp slt i32 %74, 524288
  br i1 %75, label %76, label %77

76:                                               ; preds = %58
  store i32 524288, i32* @maxpipekva, align 4
  br label %77

77:                                               ; preds = %76, %58
  %78 = load i32, i32* @maxpipekva, align 4
  %79 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %80 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sdiv i32 %81, 64
  %83 = icmp sgt i32 %78, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %86 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %87 = sub nsw i32 %85, %86
  %88 = sdiv i32 %87, 64
  store i32 %88, i32* @maxpipekva, align 4
  br label %89

89:                                               ; preds = %84, %77
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, ...) #1

declare dso_local i64 @imax(i32, i64) #1

declare dso_local i32 @TUNABLE_LONG_FETCH(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
