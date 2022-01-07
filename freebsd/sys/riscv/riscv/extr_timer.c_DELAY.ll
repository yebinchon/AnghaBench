; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_timer.c_DELAY.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_timer.c_DELAY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@riscv_timer_sc = common dso_local global i32* null, align 8
@riscv_timer_timecount = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DELAY(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32*, i32** @riscv_timer_sc, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %23, %9
  %11 = load i32, i32* %2, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  store i32 200, i32* %3, align 4
  br label %14

14:                                               ; preds = %19, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = call i32 (...) @cpufunc_nullop()
  br label %19

19:                                               ; preds = %17
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  br label %14

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %2, align 4
  br label %10

26:                                               ; preds = %10
  br label %62

27:                                               ; preds = %1
  %28 = call i32 (...) @TSENTER()
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @riscv_timer_timecount, i32 0, i32 0), align 4
  %30 = sdiv i32 %29, 1000000
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %4, align 4
  %34 = udiv i32 -2147483648, %33
  %35 = icmp uge i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = udiv i32 -2147483648, %37
  %39 = sub i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %27
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32*, i32** @riscv_timer_sc, align 8
  %46 = call i64 @get_counts(i32* %45)
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %50, %44
  %48 = load i32, i32* %3, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32*, i32** @riscv_timer_sc, align 8
  %52 = call i64 @get_counts(i32* %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = sub nsw i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %3, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %5, align 8
  br label %47

60:                                               ; preds = %47
  %61 = call i32 (...) @TSEXIT()
  br label %62

62:                                               ; preds = %60, %26
  ret void
}

declare dso_local i32 @cpufunc_nullop(...) #1

declare dso_local i32 @TSENTER(...) #1

declare dso_local i64 @get_counts(i32*) #1

declare dso_local i32 @TSEXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
