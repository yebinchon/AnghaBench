; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_uart_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_uart_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@UART_DM_5_BPS = common dso_local global i32 0, align 4
@UART_DM_6_BPS = common dso_local global i32 0, align 4
@UART_DM_7_BPS = common dso_local global i32 0, align 4
@UART_DM_8_BPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UART_DM_NO_PARITY = common dso_local global i32 0, align 4
@UART_DM_ODD_PARITY = common dso_local global i32 0, align 4
@UART_DM_EVEN_PARITY = common dso_local global i32 0, align 4
@UART_DM_SPACE_PARITY = common dso_local global i32 0, align 4
@UART_DM_SBL_1 = common dso_local global i32 0, align 4
@UART_DM_SBL_2 = common dso_local global i32 0, align 4
@UART_DM_MR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @msm_uart_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_uart_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %34 [
    i32 5, label %14
    i32 6, label %19
    i32 7, label %24
    i32 8, label %29
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* @UART_DM_5_BPS, align 4
  %16 = shl i32 %15, 4
  %17 = load i32, i32* %12, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %12, align 4
  br label %36

19:                                               ; preds = %5
  %20 = load i32, i32* @UART_DM_6_BPS, align 4
  %21 = shl i32 %20, 4
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %12, align 4
  br label %36

24:                                               ; preds = %5
  %25 = load i32, i32* @UART_DM_7_BPS, align 4
  %26 = shl i32 %25, 4
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %12, align 4
  br label %36

29:                                               ; preds = %5
  %30 = load i32, i32* @UART_DM_8_BPS, align 4
  %31 = shl i32 %30, 4
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %6, align 4
  br label %78

36:                                               ; preds = %29, %24, %19, %14
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %55 [
    i32 130, label %38
    i32 129, label %42
    i32 132, label %46
    i32 128, label %50
    i32 131, label %54
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @UART_DM_NO_PARITY, align 4
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  br label %57

42:                                               ; preds = %36
  %43 = load i32, i32* @UART_DM_ODD_PARITY, align 4
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %57

46:                                               ; preds = %36
  %47 = load i32, i32* @UART_DM_EVEN_PARITY, align 4
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  br label %57

50:                                               ; preds = %36
  %51 = load i32, i32* @UART_DM_SPACE_PARITY, align 4
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %57

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %36, %54
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %6, align 4
  br label %78

57:                                               ; preds = %50, %46, %42, %38
  %58 = load i32, i32* %10, align 4
  switch i32 %58, label %69 [
    i32 1, label %59
    i32 2, label %64
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* @UART_DM_SBL_1, align 4
  %61 = shl i32 %60, 2
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %71

64:                                               ; preds = %57
  %65 = load i32, i32* @UART_DM_SBL_2, align 4
  %66 = shl i32 %65, 2
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %6, align 4
  br label %78

71:                                               ; preds = %64, %59
  %72 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %73 = load i32, i32* @UART_DM_MR2, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @uart_setreg(%struct.uart_bas* %72, i32 %73, i32 %74)
  %76 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %77 = call i32 @uart_barrier(%struct.uart_bas* %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %71, %69, %55, %34
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
