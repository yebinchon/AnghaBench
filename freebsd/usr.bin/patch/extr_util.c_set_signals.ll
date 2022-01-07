; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_util.c_set_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_util.c_set_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_signals.hupval = internal global i64 0, align 8
@set_signals.intval = internal global i64 0, align 8
@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@my_exit = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_signals(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @SIGHUP, align 4
  %7 = load i64, i64* @SIG_IGN, align 8
  %8 = call i64 @signal(i32 %6, i64 %7)
  store i64 %8, i64* @set_signals.hupval, align 8
  %9 = load i64, i64* @set_signals.hupval, align 8
  %10 = load i64, i64* @SIG_IGN, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = load i64, i64* @my_exit, align 8
  store i64 %13, i64* @set_signals.hupval, align 8
  br label %14

14:                                               ; preds = %12, %5
  %15 = load i32, i32* @SIGINT, align 4
  %16 = load i64, i64* @SIG_IGN, align 8
  %17 = call i64 @signal(i32 %15, i64 %16)
  store i64 %17, i64* @set_signals.intval, align 8
  %18 = load i64, i64* @set_signals.intval, align 8
  %19 = load i64, i64* @SIG_IGN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i64, i64* @my_exit, align 8
  store i64 %22, i64* @set_signals.intval, align 8
  br label %23

23:                                               ; preds = %21, %14
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* @SIGHUP, align 4
  %26 = load i64, i64* @set_signals.hupval, align 8
  %27 = call i64 @signal(i32 %25, i64 %26)
  %28 = load i32, i32* @SIGINT, align 4
  %29 = load i64, i64* @set_signals.intval, align 8
  %30 = call i64 @signal(i32 %28, i64 %29)
  ret void
}

declare dso_local i64 @signal(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
