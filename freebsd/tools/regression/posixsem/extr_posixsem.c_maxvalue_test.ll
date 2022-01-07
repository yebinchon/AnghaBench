; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_maxvalue_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_maxvalue_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEM_VALUE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ksem_init\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ksem_getvalue\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"value %d != SEM_VALUE_MAX\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"value < 0\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ksem_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @maxvalue_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maxvalue_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SEM_VALUE_MAX, align 4
  %4 = call i64 @ksem_init(i32* %1, i32 %3)
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %39

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @ksem_getvalue(i32 %9, i32* %2)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = call i32 @fail_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @ksem_destroy(i32 %14)
  br label %39

16:                                               ; preds = %8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SEM_VALUE_MAX, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i32 @fail_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @ksem_destroy(i32 %22)
  br label %39

24:                                               ; preds = %16
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = call i32 @fail_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* %1, align 4
  %30 = call i64 @ksem_destroy(i32 %29)
  br label %39

31:                                               ; preds = %24
  %32 = load i32, i32* %1, align 4
  %33 = call i64 @ksem_destroy(i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @fail_errno(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %39

37:                                               ; preds = %31
  %38 = call i32 (...) @pass()
  br label %39

39:                                               ; preds = %37, %35, %27, %20, %12, %6
  ret void
}

declare dso_local i64 @ksem_init(i32*, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i64 @ksem_getvalue(i32, i32*) #1

declare dso_local i64 @ksem_destroy(i32) #1

declare dso_local i32 @fail_err(i8*) #1

declare dso_local i32 @pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
