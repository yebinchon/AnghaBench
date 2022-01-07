; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_open_after_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_open_after_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_PATH = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ksem_open(1)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ksem_unlink\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @open_after_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_after_unlink() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TEST_PATH, align 4
  %3 = load i32, i32* @O_CREAT, align 4
  %4 = call i64 @ksem_open(i32* %1, i32 %2, i32 %3, i32 511, i32 1)
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @fail_errno(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %21

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @ksem_close(i32 %9)
  %11 = load i32, i32* @TEST_PATH, align 4
  %12 = call i64 @ksem_unlink(i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %21

16:                                               ; preds = %8
  %17 = load i32, i32* @TEST_PATH, align 4
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = call i32 @ksem_open_should_fail(i32 %17, i32 %18, i32 511, i32 1, i32 %19)
  br label %21

21:                                               ; preds = %16, %14, %6
  ret void
}

declare dso_local i64 @ksem_open(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i32 @ksem_close(i32) #1

declare dso_local i64 @ksem_unlink(i32) #1

declare dso_local i32 @ksem_open_should_fail(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
