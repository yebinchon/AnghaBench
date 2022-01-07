; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_set_baudrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_set_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.umcs7840_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Port %d bad speed: %d\0A\00", align 1
@MCS7840_DEV_SPx_CLOCK_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Port %d bad speed calculation: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Port %d set speed: %d (%02x / %d)\0A\00", align 1
@umcs7840_port_registers = common dso_local global %struct.TYPE_4__* null, align 8
@MCS7840_UART_LCR_DIVISORS = common dso_local global i64 0, align 8
@MCS7840_UART_REG_LCR = common dso_local global i32 0, align 4
@MCS7840_UART_REG_DLL = common dso_local global i32 0, align 4
@MCS7840_UART_REG_DLM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umcs7840_softc*, i64, i32)* @umcs7840_set_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umcs7840_set_baudrate(%struct.umcs7840_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.umcs7840_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.umcs7840_softc* %0, %struct.umcs7840_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @umcs7840_calc_baudrate(i32 %12, i32* %9, i64* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, i64, i32, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %17)
  store i32 -1, i32* %4, align 4
  br label %145

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @MCS7840_DEV_SPx_CLOCK_MASK, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %19
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i8*, i64, i32, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 %30)
  store i32 -1, i32* %4, align 4
  br label %145

32:                                               ; preds = %22
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i8*, i64, i32, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %33, i32 %34, i64 %35, i32 %36)
  %38 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @umcs7840_port_registers, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %38, i32 %43, i64* %11)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %145

49:                                               ; preds = %32
  %50 = load i64, i64* @MCS7840_DEV_SPx_CLOCK_MASK, align 8
  %51 = load i64, i64* %11, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %11, align 8
  %56 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @umcs7840_port_registers, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %56, i32 %61, i64 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %145

68:                                               ; preds = %49
  %69 = load i64, i64* @MCS7840_UART_LCR_DIVISORS, align 8
  %70 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %71 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %69
  store i64 %77, i64* %75, align 8
  %78 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i32, i32* @MCS7840_UART_REG_LCR, align 4
  %81 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %82 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %78, i64 %79, i32 %80, i64 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %68
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %145

93:                                               ; preds = %68
  %94 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i32, i32* @MCS7840_UART_REG_DLL, align 4
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, 255
  %99 = sext i32 %98 to i64
  %100 = call i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %94, i64 %95, i32 %96, i64 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %145

105:                                              ; preds = %93
  %106 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i32, i32* @MCS7840_UART_REG_DLM, align 4
  %109 = load i32, i32* %9, align 4
  %110 = ashr i32 %109, 8
  %111 = and i32 %110, 255
  %112 = sext i32 %111 to i64
  %113 = call i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %106, i64 %107, i32 %108, i64 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %145

118:                                              ; preds = %105
  %119 = load i64, i64* @MCS7840_UART_LCR_DIVISORS, align 8
  %120 = xor i64 %119, -1
  %121 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %122 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = and i64 %127, %120
  store i64 %128, i64* %126, align 8
  %129 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load i32, i32* @MCS7840_UART_REG_LCR, align 4
  %132 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %133 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %132, i32 0, i32 0
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i64, i64* %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %129, i64 %130, i32 %131, i64 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %118
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %4, align 4
  br label %145

144:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %142, %116, %103, %91, %66, %47, %28, %15
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @umcs7840_calc_baudrate(i32, i32*, i64*) #1

declare dso_local i32 @DPRINTF(i8*, i64, i32, ...) #1

declare dso_local i32 @umcs7840_get_reg_sync(%struct.umcs7840_softc*, i32, i64*) #1

declare dso_local i32 @umcs7840_set_reg_sync(%struct.umcs7840_softc*, i32, i64) #1

declare dso_local i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
