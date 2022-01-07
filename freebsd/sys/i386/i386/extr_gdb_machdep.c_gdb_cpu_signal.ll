; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_gdb_machdep.c_gdb_cpu_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_gdb_machdep.c_gdb_cpu_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_USER = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIGURG = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGEMT = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_cpu_signal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @T_USER, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  switch i32 %9, label %40 [
    i32 0, label %10
    i32 1, label %12
    i32 3, label %14
    i32 4, label %16
    i32 5, label %18
    i32 6, label %20
    i32 7, label %22
    i32 8, label %24
    i32 9, label %26
    i32 10, label %28
    i32 11, label %30
    i32 12, label %32
    i32 13, label %34
    i32 14, label %36
    i32 16, label %38
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @SIGFPE, align 4
  store i32 %11, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load i32, i32* @SIGTRAP, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load i32, i32* @SIGTRAP, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load i32, i32* @SIGURG, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* @SIGURG, align 4
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load i32, i32* @SIGILL, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load i32, i32* @SIGFPE, align 4
  store i32 %23, i32* %3, align 4
  br label %42

24:                                               ; preds = %2
  %25 = load i32, i32* @SIGEMT, align 4
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %2
  %27 = load i32, i32* @SIGSEGV, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load i32, i32* @SIGTRAP, align 4
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load i32, i32* @SIGSEGV, align 4
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load i32, i32* @SIGSEGV, align 4
  store i32 %33, i32* %3, align 4
  br label %42

34:                                               ; preds = %2
  %35 = load i32, i32* @SIGSEGV, align 4
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load i32, i32* @SIGSEGV, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @SIGEMT, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @SIGEMT, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
