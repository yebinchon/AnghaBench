; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @quicc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quicc_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %5
  %17 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %18 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @quicc_divisor(i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %6, align 4
  br label %87

26:                                               ; preds = %16
  %27 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %28 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %29 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = call i32 @QUICC_REG_BRG(i64 %31)
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, 65536
  %35 = call i32 @quicc_write4(%struct.uart_bas* %27, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %26, %5
  store i32 0, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %49 [
    i32 5, label %38
    i32 6, label %40
    i32 7, label %43
    i32 8, label %46
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %13, align 4
  br label %51

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, 4096
  store i32 %42, i32* %13, align 4
  br label %51

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, 8192
  store i32 %45, i32* %13, align 4
  br label %51

46:                                               ; preds = %36
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, 12288
  store i32 %48, i32* %13, align 4
  br label %51

49:                                               ; preds = %36
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %6, align 4
  br label %87

51:                                               ; preds = %46, %43, %40, %38
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %58 [
    i32 1, label %53
    i32 2, label %55
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %13, align 4
  br label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, 16384
  store i32 %57, i32* %13, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %6, align 4
  br label %87

60:                                               ; preds = %55, %53
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %76 [
    i32 132, label %62
    i32 131, label %65
    i32 130, label %68
    i32 129, label %70
    i32 128, label %73
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %63, 26
  store i32 %64, i32* %13, align 4
  br label %78

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %66, 31
  store i32 %67, i32* %13, align 4
  br label %78

68:                                               ; preds = %60
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %13, align 4
  br label %78

70:                                               ; preds = %60
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, 16
  store i32 %72, i32* %13, align 4
  br label %78

73:                                               ; preds = %60
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, 21
  store i32 %75, i32* %13, align 4
  br label %78

76:                                               ; preds = %60
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %6, align 4
  br label %87

78:                                               ; preds = %73, %70, %68, %65, %62
  %79 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %80 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %81 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = call i32 @QUICC_REG_SCC_PSMR(i64 %83)
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @quicc_write2(%struct.uart_bas* %79, i32 %84, i32 %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %78, %76, %58, %49, %24
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @quicc_divisor(i32, i32) #1

declare dso_local i32 @quicc_write4(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @QUICC_REG_BRG(i64) #1

declare dso_local i32 @quicc_write2(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @QUICC_REG_SCC_PSMR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
