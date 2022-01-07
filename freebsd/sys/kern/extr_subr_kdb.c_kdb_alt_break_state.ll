; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_alt_break_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kdb.c_kdb_alt_break_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_CR = common dso_local global i32 0, align 4
@KEY_TILDE = common dso_local global i32 0, align 4
@KEY_CRTLB = common dso_local global i32 0, align 4
@KDB_REQ_DEBUGGER = common dso_local global i32 0, align 4
@KEY_CRTLP = common dso_local global i32 0, align 4
@KDB_REQ_PANIC = common dso_local global i32 0, align 4
@KEY_CRTLR = common dso_local global i32 0, align 4
@KDB_REQ_REBOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @kdb_alt_break_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_alt_break_state(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @KEY_CR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  store i32 130, i32* %11, align 4
  store i32 0, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %46 [
    i32 130, label %15
    i32 129, label %23
    i32 128, label %45
  ]

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  store i32 128, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @KEY_TILDE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  store i32 129, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %15
  br label %48

23:                                               ; preds = %12
  %24 = load i32*, i32** %5, align 8
  store i32 128, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @KEY_CRTLB, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @KDB_REQ_DEBUGGER, align 4
  store i32 %29, i32* %6, align 4
  br label %44

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @KEY_CRTLP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @KDB_REQ_PANIC, align 4
  store i32 %35, i32* %6, align 4
  br label %43

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @KEY_CRTLR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @KDB_REQ_REBOOT, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %34
  br label %44

44:                                               ; preds = %43, %28
  br label %48

45:                                               ; preds = %12
  br label %46

46:                                               ; preds = %12, %45
  %47 = load i32*, i32** %5, align 8
  store i32 128, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %44, %22
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %10
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
