; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kcov.c_thread_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kcov.c_thread_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KIOENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to enable kcov %s\00", align 1
@modes = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"unknown mode\00", align 1
@thread_test_helper = common dso_local global i32 0, align 4
@KIODISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unable to disable kcov\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @thread_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_test(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = call i32* @common_head(i32* %5)
  store i32* %6, i32** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @KIOENABLE, align 4
  %9 = load i64, i64* %2, align 8
  %10 = call i64 @ioctl(i32 %7, i32 %8, i64 %9)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %2, align 8
  %14 = load i8**, i8*** @modes, align 8
  %15 = call i64 @nitems(i8** %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i8**, i8*** @modes, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i8* [ %21, %17 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %22 ]
  %25 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @thread_test_helper, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @pthread_create(i32* %3, i32* null, i32 %26, i32* %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pthread_join(i32 %29, i32* null)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @KIODISABLE, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, i64 0)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @common_tail(i32 %37, i32* %38)
  ret void
}

declare dso_local i32* @common_head(i32*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, i64) #1

declare dso_local i64 @nitems(i8**) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @common_tail(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
