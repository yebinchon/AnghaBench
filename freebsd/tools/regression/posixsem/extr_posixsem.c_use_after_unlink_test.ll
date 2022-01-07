; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_use_after_unlink_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_use_after_unlink_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_PATH = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ksem_open(O_CREAT | O_EXCL)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ksem_unlink\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ksem_post\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ksem_wait\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ksem_close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @use_after_unlink_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use_after_unlink_test() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TEST_PATH, align 4
  %3 = load i32, i32* @O_CREAT, align 4
  %4 = load i32, i32* @O_EXCL, align 4
  %5 = or i32 %3, %4
  %6 = call i64 @ksem_open(i32* %1, i32 %2, i32 %5, i32 511, i32 1)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @fail_errno(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %63

10:                                               ; preds = %0
  %11 = load i32, i32* @TEST_PATH, align 4
  %12 = call i64 @ksem_unlink(i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = call i32 @fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %1, align 4
  %17 = call i64 @ksem_close(i32 %16)
  br label %63

18:                                               ; preds = %10
  %19 = load i32, i32* %1, align 4
  %20 = call i64 @checkvalue(i32 %19, i32 1)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = call i64 @ksem_close(i32 %23)
  br label %63

25:                                               ; preds = %18
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @ksem_post(i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %1, align 4
  %32 = call i64 @ksem_close(i32 %31)
  br label %63

33:                                               ; preds = %25
  %34 = load i32, i32* %1, align 4
  %35 = call i64 @checkvalue(i32 %34, i32 2)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = call i64 @ksem_close(i32 %38)
  br label %63

40:                                               ; preds = %33
  %41 = load i32, i32* %1, align 4
  %42 = call i64 @ksem_wait(i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* %1, align 4
  %47 = call i64 @ksem_close(i32 %46)
  br label %63

48:                                               ; preds = %40
  %49 = load i32, i32* %1, align 4
  %50 = call i64 @checkvalue(i32 %49, i32 1)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %1, align 4
  %54 = call i64 @ksem_close(i32 %53)
  br label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %1, align 4
  %57 = call i64 @ksem_close(i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @fail_errno(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %63

61:                                               ; preds = %55
  %62 = call i32 (...) @pass()
  br label %63

63:                                               ; preds = %61, %59, %52, %44, %37, %29, %22, %14, %8
  ret void
}

declare dso_local i64 @ksem_open(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i64 @ksem_unlink(i32) #1

declare dso_local i64 @ksem_close(i32) #1

declare dso_local i64 @checkvalue(i32, i32) #1

declare dso_local i64 @ksem_post(i32) #1

declare dso_local i64 @ksem_wait(i32) #1

declare dso_local i32 @pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
