; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_sgpio.c_scic_sgpio_apply_led_blink_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_sgpio.c_scic_sgpio_apply_led_blink_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SGODSR_INVERT_BIT = common dso_local global i32 0, align 4
@SGODSR_ERROR_LED_SHIFT = common dso_local global i32 0, align 4
@SGODSR_LOCATE_LED_SHIFT = common dso_local global i32 0, align 4
@SGODSR_ACTIVITY_LED_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sgpio_apply_led_blink_pattern(i64 %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %14, align 8
  %17 = load i32, i32* @SGODSR_INVERT_BIT, align 4
  %18 = load i32, i32* @SGODSR_ERROR_LED_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* @SGODSR_INVERT_BIT, align 4
  %21 = load i32, i32* @SGODSR_LOCATE_LED_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* @SGODSR_INVERT_BIT, align 4
  %25 = load i32, i32* @SGODSR_ACTIVITY_LED_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  store i32 %27, i32* %13, align 4
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %6
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @SGODSR_ERROR_LED_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @SGODSR_INVERT_BIT, align 4
  %37 = load i32, i32* @SGODSR_ERROR_LED_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %30, %6
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @SGODSR_LOCATE_LED_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %13, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @SGODSR_INVERT_BIT, align 4
  %52 = load i32, i32* @SGODSR_LOCATE_LED_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %45, %42
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @SGODSR_ACTIVITY_LED_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @SGODSR_INVERT_BIT, align 4
  %67 = load i32, i32* @SGODSR_ACTIVITY_LED_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %13, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %60, %57
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @scic_sgpio_write_SGODSR_register(i32* %73, i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @scic_sgpio_write_SGODSR_register(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
