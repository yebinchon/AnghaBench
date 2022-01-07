; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_read_scratch_ram_dword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_read_scratch_ram_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCU_RAM_INIT_COMPLETED = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCU_MAX_ZPT_DWORD_INDEX = common dso_local global i32 0, align 4
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_read_scratch_ram_dword(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @SMU_SMUCSR_READ(i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @SCU_RAM_INIT_COMPLETED, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @SCU_RAM_INIT_COMPLETED, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @scic_controller_get_scratch_ram_size(i64 %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SCU_MAX_ZPT_DWORD_INDEX, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = srem i32 %35, 4
  %37 = sub nsw i32 %34, %36
  %38 = add nsw i32 %33, %37
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @scu_controller_scratch_ram_register_read(i32* %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %58

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 132
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = srem i32 %49, 4
  %51 = sub nsw i32 %48, %50
  %52 = add nsw i32 %47, %51
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %8, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @scu_controller_scratch_ram_register_read_ext(i32* %54, i32 %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %44, %32
  %59 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %23
  %61 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %58, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @SMU_SMUCSR_READ(i32*) #1

declare dso_local i32 @scic_controller_get_scratch_ram_size(i64) #1

declare dso_local i32 @scu_controller_scratch_ram_register_read(i32*, i32) #1

declare dso_local i32 @scu_controller_scratch_ram_register_read_ext(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
