; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_post_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_post_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ksem_init\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ksem_post\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ksem_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @post_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_test() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @ksem_init(i32* %1, i32 1)
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %36

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = call i64 @checkvalue(i32 %7, i32 1)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = call i64 @ksem_destroy(i32 %11)
  br label %36

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @ksem_post(i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %1, align 4
  %20 = call i64 @ksem_destroy(i32 %19)
  br label %36

21:                                               ; preds = %13
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @checkvalue(i32 %22, i32 2)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @ksem_destroy(i32 %26)
  br label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %1, align 4
  %30 = call i64 @ksem_destroy(i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @fail_errno(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %36

34:                                               ; preds = %28
  %35 = call i32 (...) @pass()
  br label %36

36:                                               ; preds = %34, %32, %25, %17, %10, %4
  ret void
}

declare dso_local i64 @ksem_init(i32*, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i64 @checkvalue(i32, i32) #1

declare dso_local i64 @ksem_destroy(i32) #1

declare dso_local i64 @ksem_post(i32) #1

declare dso_local i32 @pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
