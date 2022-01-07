; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/hal/extr_nlm_hal.c_nlm_set_device_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/hal/extr_nlm_hal.c_nlm_set_device_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_DFS_DIV_DEC_CTRL = common dso_local global i32 0, align 4
@SYS_DFS_DIV_INC_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_set_device_frequency(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @nlm_get_sys_regbase(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @nlm_get_device_frequency(i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 5
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %21

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %19
  br label %22

22:                                               ; preds = %47, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 5
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %51

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SYS_DFS_DIV_DEC_CTRL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 1, %38
  %40 = call i32 @nlm_write_sys_reg(i32 %36, i32 %37, i32 %39)
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SYS_DFS_DIV_INC_CTRL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 1, %44
  %46 = call i32 @nlm_write_sys_reg(i32 %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @nlm_get_device_frequency(i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %22

51:                                               ; preds = %31
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @nlm_get_device_frequency(i32 %52, i32 %53)
  ret i32 %54
}

declare dso_local i32 @nlm_get_sys_regbase(i32) #1

declare dso_local i32 @nlm_get_device_frequency(i32, i32) #1

declare dso_local i32 @nlm_write_sys_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
