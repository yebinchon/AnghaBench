; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_exhaust_unnamed_sems.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_exhaust_unnamed_sems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"p1003_1b.sem_nsems_max\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sysctl(p1003_1b.sem_nsems_max)\00", align 1
@exhaust_unnamed_child = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ksem_init\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Limit of %d semaphores not enforced\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"bad child state %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exhaust_unnamed_sems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exhaust_unnamed_sems() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i64 4, i64* %1, align 8
  %4 = call i64 @sysctlbyname(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %2, i64* %1, i32* null, i32 0)
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @fail_errno(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %31

8:                                                ; preds = %0
  %9 = load i32, i32* @exhaust_unnamed_child, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i64 @child_worker(i32 %9, i8* %12, i32* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %31

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @CSTAT_ERROR(i32 %17)
  store i32 %18, i32* @errno, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @CSTAT_CLASS(i32 %19)
  switch i32 %20, label %28 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %25
  ]

21:                                               ; preds = %16
  %22 = call i32 (...) @pass()
  br label %31

23:                                               ; preds = %16
  %24 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %31

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @fail_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  br label %31

28:                                               ; preds = %16
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @fail_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %6, %15, %28, %25, %23, %21
  ret void
}

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i64 @child_worker(i32, i8*, i32*) #1

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
