; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_write_scratch_ram_dword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_write_scratch_ram_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCU_MAX_ZPT_DWORD_INDEX = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_write_scratch_ram_dword(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @scic_controller_get_scratch_ram_size(i64 %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SCU_MAX_ZPT_DWORD_INDEX, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = srem i32 %23, 4
  %25 = sub nsw i32 %22, %24
  %26 = add nsw i32 %21, %25
  %27 = add nsw i32 %26, 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @scu_controller_scratch_ram_register_write(i32* %28, i32 %29, i32 %30)
  br label %46

32:                                               ; preds = %14
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 132
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = srem i32 %37, 4
  %39 = sub nsw i32 %36, %38
  %40 = add nsw i32 %35, %39
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @scu_controller_scratch_ram_register_write_ext(i32* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %32, %20
  %47 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %3
  %49 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @scic_controller_get_scratch_ram_size(i64) #1

declare dso_local i32 @scu_controller_scratch_ram_register_write(i32*, i32, i32) #1

declare dso_local i32 @scu_controller_scratch_ram_register_write_ext(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
