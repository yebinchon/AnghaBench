; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_ptrace_test.c_signal_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_ptrace_test.c_signal_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sigusr1_sem = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @signal_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @signal_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = call i32 @sem_wait(i32* @sigusr1_sem)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @EINTR, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ true, %8 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @CHILD_REQUIRE(i32 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINTR, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br i1 %28, label %8, label %29

29:                                               ; preds = %27
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @pthread_barrier_wait(i32* %30)
  %32 = call i64 @sigemptyset(i32* %4)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @CHILD_REQUIRE(i32 %34)
  %36 = load i32, i32* @SIGUSR1, align 4
  %37 = call i64 @sigaddset(i32* %4, i32 %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @CHILD_REQUIRE(i32 %39)
  %41 = load i32, i32* @SIG_BLOCK, align 4
  %42 = call i64 @pthread_sigmask(i32 %41, i32* %4, i32* null)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @CHILD_REQUIRE(i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @pthread_barrier_wait(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @pthread_barrier_wait(i32* %48)
  ret i8* null
}

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @CHILD_REQUIRE(i32) #1

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i64 @sigaddset(i32*, i32) #1

declare dso_local i64 @pthread_sigmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
