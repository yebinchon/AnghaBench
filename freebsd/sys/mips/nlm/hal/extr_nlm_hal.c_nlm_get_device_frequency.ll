; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/hal/extr_nlm_hal.c_nlm_get_device_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/hal/extr_nlm_hal.c_nlm_get_device_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_PLL_CTRL = common dso_local global i32 0, align 4
@SYS_DFS_DIV_VALUE0 = common dso_local global i32 0, align 4
@SYS_DFS_DIV_VALUE1 = common dso_local global i32 0, align 4
@DFS_DEVICE_NAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nlm_get_device_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_get_device_frequency(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYS_PLL_CTRL, align 4
  %13 = call i32 @nlm_read_sys_reg(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 7
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_DFS_DIV_VALUE0, align 4
  %19 = call i32 @nlm_read_sys_reg(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 8
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_DFS_DIV_VALUE1, align 4
  %25 = call i32 @nlm_read_sys_reg(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 2
  %30 = ashr i32 %27, %29
  %31 = and i32 %30, 15
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 3
  %35 = and i32 %34, 127
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 1
  %39 = and i32 %38, 3
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @DFS_DEVICE_NAE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %26
  %45 = call i32 (...) @nlm_is_xlp8xx_ax()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 2, i32* %10, align 4
  br label %49

48:                                               ; preds = %44, %26
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 400, %50
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 3, %52
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sdiv i32 %51, %57
  ret i32 %58
}

declare dso_local i32 @nlm_read_sys_reg(i32, i32) #1

declare dso_local i32 @nlm_is_xlp8xx_ax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
