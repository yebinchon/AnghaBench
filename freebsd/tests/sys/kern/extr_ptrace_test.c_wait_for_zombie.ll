; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_ptrace_test.c_wait_for_zombie.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_ptrace_test.c_wait_for_zombie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_PID = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@SZOMB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wait_for_zombie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_zombie(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kinfo_proc, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x i32], align 16
  store i32 %0, i32* %2, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* @CTL_KERN, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %7, i32* %8, align 16
  %9 = load i32, i32* @KERN_PROC, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @KERN_PROC_PID, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %13, i32* %14, align 4
  store i64 8, i64* %4, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %17 = call i32 @nitems(i32* %16)
  %18 = call i32 @sysctl(i32* %15, i32 %17, %struct.kinfo_proc* %3, i64* %4, i32* null, i32 0)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ESRCH, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ATF_REQUIRE(i32 %24)
  br label %34

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SZOMB, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %34

32:                                               ; preds = %26
  %33 = call i32 @usleep(i32 5000)
  br label %6

34:                                               ; preds = %31, %20
  ret void
}

declare dso_local i32 @sysctl(i32*, i32, %struct.kinfo_proc*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
