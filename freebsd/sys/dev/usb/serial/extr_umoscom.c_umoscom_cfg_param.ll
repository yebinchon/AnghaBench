; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.umoscom_softc* }
%struct.umoscom_softc = type { i32 }
%struct.termios = type { i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"speed=%d\0A\00", align 1
@UMOSCOM_BAUD_REF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid baud rate!\0A\00", align 1
@UMOSCOM_LCR = common dso_local global i32 0, align 4
@UMOSCOM_LCR_DIVLATCH_EN = common dso_local global i32 0, align 4
@UMOSCOM_UART_REG = common dso_local global i32 0, align 4
@UMOSCOM_BAUDLO = common dso_local global i32 0, align 4
@UMOSCOM_BAUDHI = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UMOSCOM_LCR_STOP_BITS_2 = common dso_local global i32 0, align 4
@UMOSCOM_LCR_STOP_BITS_1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UMOSCOM_LCR_PARITY_ODD = common dso_local global i32 0, align 4
@UMOSCOM_LCR_PARITY_EVEN = common dso_local global i32 0, align 4
@UMOSCOM_LCR_PARITY_NONE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @umoscom_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umoscom_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.umoscom_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 0
  %9 = load %struct.umoscom_softc*, %struct.umoscom_softc** %8, align 8
  store %struct.umoscom_softc* %9, %struct.umoscom_softc** %5, align 8
  %10 = load %struct.termios*, %struct.termios** %4, align 8
  %11 = getelementptr inbounds %struct.termios, %struct.termios* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* @UMOSCOM_BAUD_REF, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.termios*, %struct.termios** %4, align 8
  %17 = getelementptr inbounds %struct.termios, %struct.termios* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = sdiv i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %116

25:                                               ; preds = %2
  %26 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %27 = load i32, i32* @UMOSCOM_LCR, align 4
  %28 = load i32, i32* @UMOSCOM_LCR_DIVLATCH_EN, align 4
  %29 = load i32, i32* @UMOSCOM_UART_REG, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @umoscom_cfg_write(%struct.umoscom_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %33 = load i32, i32* @UMOSCOM_BAUDLO, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 255
  %36 = load i32, i32* @UMOSCOM_UART_REG, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @umoscom_cfg_write(%struct.umoscom_softc* %32, i32 %33, i32 %37)
  %39 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %40 = load i32, i32* @UMOSCOM_BAUDHI, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = load i32, i32* @UMOSCOM_UART_REG, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @umoscom_cfg_write(%struct.umoscom_softc* %39, i32 %40, i32 %45)
  %47 = load %struct.termios*, %struct.termios** %4, align 8
  %48 = getelementptr inbounds %struct.termios, %struct.termios* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CSTOPB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %25
  %54 = load i32, i32* @UMOSCOM_LCR_STOP_BITS_2, align 4
  store i32 %54, i32* %6, align 4
  br label %57

55:                                               ; preds = %25
  %56 = load i32, i32* @UMOSCOM_LCR_STOP_BITS_1, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load %struct.termios*, %struct.termios** %4, align 8
  %59 = getelementptr inbounds %struct.termios, %struct.termios* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PARENB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %57
  %65 = load %struct.termios*, %struct.termios** %4, align 8
  %66 = getelementptr inbounds %struct.termios, %struct.termios* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PARODD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @UMOSCOM_LCR_PARITY_ODD, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %79

75:                                               ; preds = %64
  %76 = load i32, i32* @UMOSCOM_LCR_PARITY_EVEN, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %84

80:                                               ; preds = %57
  %81 = load i32, i32* @UMOSCOM_LCR_PARITY_NONE, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %79
  %85 = load %struct.termios*, %struct.termios** %4, align 8
  %86 = getelementptr inbounds %struct.termios, %struct.termios* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CSIZE, align 4
  %89 = and i32 %87, %88
  switch i32 %89, label %106 [
    i32 131, label %90
    i32 130, label %94
    i32 129, label %98
    i32 128, label %102
  ]

90:                                               ; preds = %84
  %91 = call i32 @UMOSCOM_LCR_DBITS(i32 5)
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %106

94:                                               ; preds = %84
  %95 = call i32 @UMOSCOM_LCR_DBITS(i32 6)
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %106

98:                                               ; preds = %84
  %99 = call i32 @UMOSCOM_LCR_DBITS(i32 7)
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %106

102:                                              ; preds = %84
  %103 = call i32 @UMOSCOM_LCR_DBITS(i32 8)
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %84, %102, %98, %94, %90
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %109 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %111 = load i32, i32* @UMOSCOM_LCR, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @UMOSCOM_UART_REG, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @umoscom_cfg_write(%struct.umoscom_softc* %110, i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %106, %23
  ret void
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @umoscom_cfg_write(%struct.umoscom_softc*, i32, i32) #1

declare dso_local i32 @UMOSCOM_LCR_DBITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
