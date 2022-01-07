; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_2x_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_2x_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSR2X_VAR_MASK = common dso_local global i32 0, align 4
@CRONYX_22 = common dso_local global i32 0, align 4
@CRONYX_24 = common dso_local global i32 0, align 4
@BSR2X_REV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cx_probe_2x_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_probe_2x_board(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @BSR(i32 %6)
  %8 = call i32 @inb(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @BSR2X_VAR_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @CRONYX_22, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @BSR2X_VAR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CRONYX_24, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %44

21:                                               ; preds = %14, %1
  store i32 2, i32* %5, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @BSR(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @inb(i64 %30)
  %32 = load i32, i32* @BSR2X_REV_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @BSR2X_REV_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %44

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %5, align 4
  br label %22

43:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @BSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
