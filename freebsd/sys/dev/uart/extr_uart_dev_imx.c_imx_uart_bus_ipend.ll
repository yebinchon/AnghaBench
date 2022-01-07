; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@USR1 = common dso_local global i32 0, align 4
@USR2 = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@TRDY = common dso_local global i32 0, align 4
@TRDYEN = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@RRDY = common dso_local global i32 0, align 4
@RRDYEN = common dso_local global i32 0, align 4
@AGTIM = common dso_local global i32 0, align 4
@ATEN = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@BRCD = common dso_local global i32 0, align 4
@BKEN = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @imx_uart_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 1
  store %struct.uart_bas* %11, %struct.uart_bas** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @uart_lock(i32 %14)
  %16 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %17 = load i32, i32* @USR1, align 4
  %18 = call i32 @REG(i32 %17)
  %19 = call i32 @GETREG(%struct.uart_bas* %16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %21 = load i32, i32* @USR2, align 4
  %22 = call i32 @REG(i32 %21)
  %23 = call i32 @GETREG(%struct.uart_bas* %20, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %25 = load i32, i32* @USR1, align 4
  %26 = call i32 @REG(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @SETREG(%struct.uart_bas* %24, i32 %26, i32 %27)
  %29 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %30 = load i32, i32* @USR2, align 4
  %31 = call i32 @REG(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SETREG(%struct.uart_bas* %29, i32 %31, i32 %32)
  %34 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %35 = load i32, i32* @UCR1, align 4
  %36 = call i32 @REG(i32 %35)
  %37 = call i32 @GETREG(%struct.uart_bas* %34, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %39 = load i32, i32* @UCR2, align 4
  %40 = call i32 @REG(i32 %39)
  %41 = call i32 @GETREG(%struct.uart_bas* %38, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %43 = load i32, i32* @UCR4, align 4
  %44 = call i32 @REG(i32 %43)
  %45 = call i32 @GETREG(%struct.uart_bas* %42, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @USR1, align 4
  %48 = load i32, i32* @TRDY, align 4
  %49 = call i32 @FLD(i32 %47, i32 %48)
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %1
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @UCR1, align 4
  %55 = load i32, i32* @TRDYEN, align 4
  %56 = call i32 @FLD(i32 %54, i32 %55)
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %61 = load i32, i32* @UCR1, align 4
  %62 = load i32, i32* @TRDYEN, align 4
  %63 = call i32 @DIS(%struct.uart_bas* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @SER_INT_TXIDLE, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %59, %52, %1
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @USR1, align 4
  %70 = load i32, i32* @RRDY, align 4
  %71 = call i32 @FLD(i32 %69, i32 %70)
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @UCR1, align 4
  %77 = load i32, i32* @RRDYEN, align 4
  %78 = call i32 @FLD(i32 %76, i32 %77)
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %74, %67
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @USR1, align 4
  %84 = load i32, i32* @AGTIM, align 4
  %85 = call i32 @FLD(i32 %83, i32 %84)
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @UCR2, align 4
  %91 = load i32, i32* @ATEN, align 4
  %92 = call i32 @FLD(i32 %90, i32 %91)
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %88, %74
  %96 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %97 = load i32, i32* @UCR1, align 4
  %98 = load i32, i32* @RRDYEN, align 4
  %99 = call i32 @DIS(%struct.uart_bas* %96, i32 %97, i32 %98)
  %100 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %101 = load i32, i32* @UCR2, align 4
  %102 = load i32, i32* @ATEN, align 4
  %103 = call i32 @DIS(%struct.uart_bas* %100, i32 %101, i32 %102)
  %104 = load i32, i32* @SER_INT_RXREADY, align 4
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %95, %88, %81
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @USR2, align 4
  %110 = load i32, i32* @BRCD, align 4
  %111 = call i32 @FLD(i32 %109, i32 %110)
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %107
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @UCR4, align 4
  %117 = load i32, i32* @BKEN, align 4
  %118 = call i32 @FLD(i32 %116, i32 %117)
  %119 = and i32 %115, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* @SER_INT_BREAK, align 4
  %123 = load i32, i32* %4, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %114, %107
  %126 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %127 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @uart_unlock(i32 %128)
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @GETREG(%struct.uart_bas*, i32) #1

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @SETREG(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @FLD(i32, i32) #1

declare dso_local i32 @DIS(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
