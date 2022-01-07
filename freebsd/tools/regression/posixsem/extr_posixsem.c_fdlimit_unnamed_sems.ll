; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_fdlimit_unnamed_sems.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_fdlimit_unnamed_sems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdlimit_unnamed_child = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ksem_init\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Limit of %d semaphores not enforced\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"getrlimit\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"bad child state %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fdlimit_unnamed_sems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdlimit_unnamed_sems() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  %3 = load i32, i32* @fdlimit_unnamed_child, align 4
  %4 = load i32, i32* %1, align 4
  %5 = sext i32 %4 to i64
  %6 = inttoptr i64 %5 to i8*
  %7 = call i64 @child_worker(i32 %3, i8* %6, i32* %2)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %29

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @CSTAT_ERROR(i32 %11)
  store i32 %12, i32* @errno, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @CSTAT_CLASS(i32 %13)
  switch i32 %14, label %26 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
    i32 3, label %22
    i32 4, label %24
  ]

15:                                               ; preds = %10
  %16 = call i32 (...) @pass()
  br label %29

17:                                               ; preds = %10
  %18 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %29

19:                                               ; preds = %10
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @fail_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %29

22:                                               ; preds = %10
  %23 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %29

24:                                               ; preds = %10
  %25 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %29

26:                                               ; preds = %10
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @fail_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %9, %26, %24, %22, %19, %17, %15
  ret void
}

declare dso_local i64 @child_worker(i32, i8*, i32*) #1

declare dso_local i32 @CSTAT_ERROR(i32) #1

declare dso_local i32 @CSTAT_CLASS(i32) #1

declare dso_local i32 @pass(...) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i32 @fail_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
