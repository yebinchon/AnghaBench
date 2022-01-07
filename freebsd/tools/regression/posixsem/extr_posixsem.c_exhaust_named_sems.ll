; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_exhaust_named_sems.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_exhaust_named_sems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"p1003_1b.sem_nsems_max\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sysctl(p1003_1b.sem_nsems_max)\00", align 1
@exhaust_named_child = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ksem_open\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Limit of %d semaphores not enforced\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"bad child state %#x\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@TEST_PATH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exhaust_named_sems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exhaust_named_sems() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 4, i64* %2, align 8
  %6 = call i64 @sysctlbyname(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %4, i64* %2, i32* null, i32 0)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @fail_errno(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %49

10:                                               ; preds = %0
  %11 = load i32, i32* @exhaust_named_child, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i64 @child_worker(i32 %11, i8* %14, i32* %5)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %49

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @CSTAT_ERROR(i32 %19)
  store i32 %20, i32* @errno, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @CSTAT_CLASS(i32 %21)
  switch i32 %22, label %30 [
    i32 0, label %23
    i32 1, label %25
    i32 2, label %27
  ]

23:                                               ; preds = %18
  %24 = call i32 (...) @pass()
  br label %33

25:                                               ; preds = %18
  %26 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @fail_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  br label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @fail_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %27, %25, %23
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %41 = load i8*, i8** @TEST_PATH, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @snprintf(i8* %40, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %41, i32 %42)
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %45 = call i32 @ksem_unlink(i8* %44)
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %34

49:                                               ; preds = %8, %17, %34
  ret void
}

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i64 @child_worker(i32, i8*, i32*) #1

declare dso_local i32 @CSTAT_ERROR(i32) #1

declare dso_local i32 @CSTAT_CLASS(i32) #1

declare dso_local i32 @pass(...) #1

declare dso_local i32 @fail_err(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ksem_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
