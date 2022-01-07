; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_utils.c_set_preselect_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_utils.c_set_preselect_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUDITPIPE_PRESELECT_MODE_LOCAL = common dso_local global i32 0, align 4
@AUDITPIPE_SET_PRESELECT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Preselection mode: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AUDITPIPE_SET_PRESELECT_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Preselection flag: %s\00", align 1
@AUDITPIPE_SET_PRESELECT_NAFLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Preselection naflag: %s\00", align 1
@AUDITPIPE_GET_QLIMIT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Query max-limit: %s\00", align 1
@AUDITPIPE_SET_QLIMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Set max-qlimit: %s\00", align 1
@AUDITPIPE_FLUSH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Auditpipe flush: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @set_preselect_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_preselect_mode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @AUDITPIPE_PRESELECT_MODE_LOCAL, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @AUDITPIPE_SET_PRESELECT_MODE, align 4
  %10 = call i64 (i32, i32, ...) @ioctl(i32 %8, i32 %9, i32* %6)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @AUDITPIPE_SET_PRESELECT_FLAGS, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 (i32, i32, ...) @ioctl(i32 %17, i32 %18, i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @AUDITPIPE_SET_PRESELECT_NAFLAGS, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 (i32, i32, ...) @ioctl(i32 %27, i32 %28, i32* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @AUDITPIPE_GET_QLIMIT_MAX, align 4
  %39 = call i64 (i32, i32, ...) @ioctl(i32 %37, i32 %38, i32* %5)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @AUDITPIPE_SET_QLIMIT, align 4
  %48 = call i64 (i32, i32, ...) @ioctl(i32 %46, i32 %47, i32* %5)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @AUDITPIPE_FLUSH, align 4
  %57 = call i64 (i32, i32, ...) @ioctl(i32 %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  ret void
}

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @atf_tc_fail(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
