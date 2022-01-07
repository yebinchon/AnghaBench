; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kcov.c_basic_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kcov.c_basic_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KIOENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to enable kcov %s\00", align 1
@modes = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"unknown mode\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"No records found\00", align 1
@KIODISABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unable to disable kcov\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @basic_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basic_test(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i32* @common_head(i32* %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @KIOENABLE, align 4
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @ioctl(i32 %6, i32 %7, i64 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %2, align 8
  %13 = load i8**, i8*** @modes, align 8
  %14 = call i64 @nitems(i8** %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i8**, i8*** @modes, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i8* [ %20, %16 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @atomic_store_64(i32* %26, i32 0)
  %28 = call i32 @sleep(i32 0)
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i64 @atomic_load_64(i32* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @KIODISABLE, align 4
  %37 = call i64 @ioctl(i32 %35, i32 %36, i64 0)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @common_tail(i32 %41, i32* %42)
  ret void
}

declare dso_local i32* @common_head(i32*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, i64) #1

declare dso_local i64 @nitems(i8**) #1

declare dso_local i32 @atomic_store_64(i32*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @atomic_load_64(i32*) #1

declare dso_local i32 @common_tail(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
