; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_unlocked_timedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_unlocked_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ksem_init\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ksem_timedwait() of unlocked sem took %ums\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ksem_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unlocked_timedwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlocked_timedwait() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @ksem_init(i32* %1, i32 1)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %38

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = call i64 @timedwait(i32 %8, i32 5000, i32* %2, i32 0)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @ksem_destroy(i32 %12)
  br label %38

14:                                               ; preds = %7
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ELAPSED(i32 %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @fail_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = call i64 @ksem_destroy(i32 %21)
  br label %38

23:                                               ; preds = %14
  %24 = load i32, i32* %1, align 4
  %25 = call i64 @checkvalue(i32 %24, i32 0)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %1, align 4
  %29 = call i64 @ksem_destroy(i32 %28)
  br label %38

30:                                               ; preds = %23
  %31 = load i32, i32* %1, align 4
  %32 = call i64 @ksem_destroy(i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @fail_errno(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %38

36:                                               ; preds = %30
  %37 = call i32 (...) @pass()
  br label %38

38:                                               ; preds = %36, %34, %27, %18, %11, %5
  ret void
}

declare dso_local i64 @ksem_init(i32*, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i64 @timedwait(i32, i32, i32*, i32) #1

declare dso_local i64 @ksem_destroy(i32) #1

declare dso_local i32 @ELAPSED(i32, i32) #1

declare dso_local i32 @fail_err(i8*, i32) #1

declare dso_local i64 @checkvalue(i32, i32) #1

declare dso_local i32 @pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
