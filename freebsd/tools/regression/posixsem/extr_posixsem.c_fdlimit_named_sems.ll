; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_fdlimit_named_sems.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_fdlimit_named_sems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdlimit_named_child = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ksem_open\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Limit of %d semaphores not enforced\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"getrlimit\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"bad child state %#x\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@TEST_PATH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fdlimit_named_sems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdlimit_named_sems() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 10, i32* %3, align 4
  %5 = load i32, i32* @fdlimit_named_child, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i64 @child_worker(i32 %5, i8* %8, i32* %4)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %47

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @CSTAT_ERROR(i32 %13)
  store i32 %14, i32* @errno, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @CSTAT_CLASS(i32 %15)
  switch i32 %16, label %28 [
    i32 0, label %17
    i32 1, label %19
    i32 2, label %21
    i32 3, label %24
    i32 4, label %26
  ]

17:                                               ; preds = %12
  %18 = call i32 (...) @pass()
  br label %31

19:                                               ; preds = %12
  %20 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %31

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @fail_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %31

24:                                               ; preds = %12
  %25 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %31

26:                                               ; preds = %12
  %27 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %31

28:                                               ; preds = %12
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @fail_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %26, %24, %21, %19, %17
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %39 = load i8*, i8** @TEST_PATH, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @snprintf(i8* %38, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %39, i32 %40)
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %43 = call i32 @ksem_unlink(i8* %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %32

47:                                               ; preds = %11, %32
  ret void
}

declare dso_local i64 @child_worker(i32, i8*, i32*) #1

declare dso_local i32 @CSTAT_ERROR(i32) #1

declare dso_local i32 @CSTAT_CLASS(i32) #1

declare dso_local i32 @pass(...) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i32 @fail_err(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ksem_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
