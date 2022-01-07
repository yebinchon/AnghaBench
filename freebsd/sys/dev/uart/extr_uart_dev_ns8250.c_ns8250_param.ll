; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@LCR_8BITS = common dso_local global i32 0, align 4
@LCR_7BITS = common dso_local global i32 0, align 4
@LCR_6BITS = common dso_local global i32 0, align 4
@LCR_5BITS = common dso_local global i32 0, align 4
@LCR_STOPB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REG_LCR = common dso_local global i32 0, align 4
@LCR_DLAB = common dso_local global i32 0, align 4
@REG_DLL = common dso_local global i32 0, align 4
@REG_DLH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @ns8250_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns8250_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 8
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32, i32* @LCR_8BITS, align 4
  %18 = load i32, i32* %13, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %13, align 4
  br label %40

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @LCR_7BITS, align 4
  %25 = load i32, i32* %13, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %13, align 4
  br label %39

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @LCR_6BITS, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @LCR_5BITS, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %23
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @LCR_STOPB, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 %48, 3
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %47
  %55 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %56 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @ns8250_divisor(i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %6, align 4
  br label %93

64:                                               ; preds = %54
  %65 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %66 = load i32, i32* @REG_LCR, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @LCR_DLAB, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @uart_setreg(%struct.uart_bas* %65, i32 %66, i32 %69)
  %71 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %72 = call i32 @uart_barrier(%struct.uart_bas* %71)
  %73 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %74 = load i32, i32* @REG_DLL, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 255
  %77 = call i32 @uart_setreg(%struct.uart_bas* %73, i32 %74, i32 %76)
  %78 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %79 = load i32, i32* @REG_DLH, align 4
  %80 = load i32, i32* %12, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 255
  %83 = call i32 @uart_setreg(%struct.uart_bas* %78, i32 %79, i32 %82)
  %84 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %85 = call i32 @uart_barrier(%struct.uart_bas* %84)
  br label %86

86:                                               ; preds = %64, %47
  %87 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %88 = load i32, i32* @REG_LCR, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @uart_setreg(%struct.uart_bas* %87, i32 %88, i32 %89)
  %91 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %92 = call i32 @uart_barrier(%struct.uart_bas* %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %86, %62
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @ns8250_divisor(i32, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
