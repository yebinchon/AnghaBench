; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@UART_LCR_5B = common dso_local global i32 0, align 4
@UART_LCR_6B = common dso_local global i32 0, align 4
@UART_LCR_7B = common dso_local global i32 0, align 4
@UART_LCR_8B = common dso_local global i32 0, align 4
@UART_LCR_PEN = common dso_local global i32 0, align 4
@UART_LCR_EVEN = common dso_local global i32 0, align 4
@UART_CDDL_REG = common dso_local global i32 0, align 4
@UART_LCR_REG = common dso_local global i32 0, align 4
@UART_LCR_STB_15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @mtk_uart_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_uart_init(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %20 [
    i32 5, label %12
    i32 6, label %14
    i32 7, label %16
    i32 8, label %18
  ]

12:                                               ; preds = %5
  %13 = load i32, i32* @UART_LCR_5B, align 4
  store i32 %13, i32* %8, align 4
  br label %21

14:                                               ; preds = %5
  %15 = load i32, i32* @UART_LCR_6B, align 4
  store i32 %15, i32* %8, align 4
  br label %21

16:                                               ; preds = %5
  %17 = load i32, i32* @UART_LCR_7B, align 4
  store i32 %17, i32* %8, align 4
  br label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @UART_LCR_8B, align 4
  store i32 %19, i32* %8, align 4
  br label %21

20:                                               ; preds = %5
  br label %68

21:                                               ; preds = %18, %16, %14, %12
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %30 [
    i32 130, label %23
    i32 128, label %27
    i32 129, label %29
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @UART_LCR_PEN, align 4
  %25 = load i32, i32* @UART_LCR_EVEN, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %10, align 4
  br label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @UART_LCR_PEN, align 4
  store i32 %28, i32* %10, align 4
  br label %31

29:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %31

30:                                               ; preds = %21
  br label %68

31:                                               ; preds = %29, %27, %23
  %32 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %33 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %41 = load i32, i32* @UART_CDDL_REG, align 4
  %42 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %43 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 16
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %45, %46
  %48 = call i32 @uart_setreg(%struct.uart_bas* %40, i32 %41, i32 %47)
  %49 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %50 = call i32 @uart_barrier(%struct.uart_bas* %49)
  br label %51

51:                                               ; preds = %39, %36, %31
  %52 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %53 = load i32, i32* @UART_LCR_REG, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @UART_LCR_STB_15, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  %62 = or i32 %54, %61
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @uart_setreg(%struct.uart_bas* %52, i32 %53, i32 %64)
  %66 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %67 = call i32 @uart_barrier(%struct.uart_bas* %66)
  br label %68

68:                                               ; preds = %60, %30, %20
  ret void
}

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
