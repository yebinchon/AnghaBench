; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_wait_twoproc_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_wait_twoproc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_PATH = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ksem_open\00", align 1
@wait_twoproc_child = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"child ksem_open()\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"child ksem_wait()\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"child ksem_close()\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"bad child state %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wait_twoproc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_twoproc_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TEST_PATH, align 4
  %4 = load i32, i32* @O_CREAT, align 4
  %5 = call i64 @ksem_open(i32* %1, i32 %3, i32 %4, i32 511, i32 0)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %50

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @schedule_post(i32 %10, i32 500)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @ksem_close(i32 %14)
  %16 = load i32, i32* @TEST_PATH, align 4
  %17 = call i32 @ksem_unlink(i32 %16)
  br label %50

18:                                               ; preds = %9
  %19 = load i32, i32* @wait_twoproc_child, align 4
  %20 = call i64 @child_worker(i32 %19, i32* null, i32* %2)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = call i32 @check_alarm(i32 1)
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @ksem_close(i32 %24)
  %26 = load i32, i32* @TEST_PATH, align 4
  %27 = call i32 @ksem_unlink(i32 %26)
  br label %50

28:                                               ; preds = %18
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @CSTAT_ERROR(i32 %29)
  store i32 %30, i32* @errno, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @CSTAT_CLASS(i32 %31)
  switch i32 %32, label %41 [
    i32 0, label %33
    i32 1, label %35
    i32 2, label %37
    i32 3, label %39
  ]

33:                                               ; preds = %28
  %34 = call i32 (...) @pass()
  br label %44

35:                                               ; preds = %28
  %36 = call i32 @fail_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %44

37:                                               ; preds = %28
  %38 = call i32 @fail_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %44

39:                                               ; preds = %28
  %40 = call i32 @fail_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %44

41:                                               ; preds = %28
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @fail_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %39, %37, %35, %33
  %45 = call i32 @check_alarm(i32 1)
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @ksem_close(i32 %46)
  %48 = load i32, i32* @TEST_PATH, align 4
  %49 = call i32 @ksem_unlink(i32 %48)
  br label %50

50:                                               ; preds = %44, %22, %13, %7
  ret void
}

declare dso_local i64 @ksem_open(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i64 @schedule_post(i32, i32) #1

declare dso_local i32 @ksem_close(i32) #1

declare dso_local i32 @ksem_unlink(i32) #1

declare dso_local i64 @child_worker(i32, i32*, i32*) #1

declare dso_local i32 @check_alarm(i32) #1

declare dso_local i32 @CSTAT_ERROR(i32) #1

declare dso_local i32 @CSTAT_CLASS(i32) #1

declare dso_local i32 @pass(...) #1

declare dso_local i32 @fail_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
