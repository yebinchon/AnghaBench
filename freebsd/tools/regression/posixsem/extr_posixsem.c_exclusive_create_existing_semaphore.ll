; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_exclusive_create_existing_semaphore.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_exclusive_create_existing_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_PATH = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ksem_open(O_CREAT)\00", align 1
@O_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exclusive_create_existing_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exclusive_create_existing_semaphore() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TEST_PATH, align 4
  %3 = load i32, i32* @O_CREAT, align 4
  %4 = call i64 @ksem_open(i32* %1, i32 %2, i32 %3, i32 511, i32 1)
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @fail_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %19

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @ksem_close(i32 %9)
  %11 = load i32, i32* @TEST_PATH, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = load i32, i32* @O_EXCL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @EEXIST, align 4
  %16 = call i32 @ksem_open_should_fail(i32 %11, i32 %14, i32 511, i32 1, i32 %15)
  %17 = load i32, i32* @TEST_PATH, align 4
  %18 = call i32 @ksem_unlink(i32 %17)
  br label %19

19:                                               ; preds = %8, %6
  ret void
}

declare dso_local i64 @ksem_open(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i32 @ksem_close(i32) #1

declare dso_local i32 @ksem_open_should_fail(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ksem_unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
