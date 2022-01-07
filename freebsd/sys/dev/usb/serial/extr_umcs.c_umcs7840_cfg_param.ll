; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.umcs7840_softc* }
%struct.umcs7840_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.termios = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Port %d config:\0A\00", align 1
@CSTOPB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"  2 stop bits\0A\00", align 1
@MCS7840_UART_LCR_STOPB2 = common dso_local global i64 0, align 8
@MCS7840_UART_LCR_STOPB1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"  1 stop bit\0A\00", align 1
@MCS7840_UART_LCR_PARITYMASK = common dso_local global i64 0, align 8
@PARENB = common dso_local global i32 0, align 4
@MCS7840_UART_LCR_PARITYON = common dso_local global i64 0, align 8
@PARODD = common dso_local global i32 0, align 4
@MCS7840_UART_LCR_PARITYODD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"  parity on - odd\0A\00", align 1
@MCS7840_UART_LCR_PARITYEVEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"  parity on - even\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"  parity off\0A\00", align 1
@MCS7840_UART_LCR_DATALENMASK = common dso_local global i64 0, align 8
@CSIZE = common dso_local global i32 0, align 4
@MCS7840_UART_LCR_DATALEN5 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"  5 bit\0A\00", align 1
@MCS7840_UART_LCR_DATALEN6 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"  6 bit\0A\00", align 1
@MCS7840_UART_LCR_DATALEN7 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"  7 bit\0A\00", align 1
@MCS7840_UART_LCR_DATALEN8 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"  8 bit\0A\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@MCS7840_UART_MCR_CTSRTS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"  CTS/RTS\0A\00", align 1
@CDTR_IFLOW = common dso_local global i32 0, align 4
@CDSR_OFLOW = common dso_local global i32 0, align 4
@MCS7840_UART_MCR_DTRDSR = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"  DTR/DSR\0A\00", align 1
@MCS7840_UART_REG_LCR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"Port %d LCR=%02x\0A\00", align 1
@MCS7840_UART_REG_MCR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"Port %d MCR=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @umcs7840_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umcs7840_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.umcs7840_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %9, i32 0, i32 1
  %11 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %10, align 8
  store %struct.umcs7840_softc* %11, %struct.umcs7840_softc** %5, align 8
  %12 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %16 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %23 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load %struct.termios*, %struct.termios** %4, align 8
  %32 = getelementptr inbounds %struct.termios, %struct.termios* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CSTOPB, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @MCS7840_UART_LCR_STOPB2, align 8
  %40 = load i64, i64* %7, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %47

42:                                               ; preds = %2
  %43 = load i64, i64* @MCS7840_UART_LCR_STOPB1, align 8
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i64, i64* @MCS7840_UART_LCR_PARITYMASK, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %7, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load %struct.termios*, %struct.termios** %4, align 8
  %53 = getelementptr inbounds %struct.termios, %struct.termios* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PARENB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %47
  %59 = load i64, i64* @MCS7840_UART_LCR_PARITYON, align 8
  %60 = load i64, i64* %7, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %7, align 8
  %62 = load %struct.termios*, %struct.termios** %4, align 8
  %63 = getelementptr inbounds %struct.termios, %struct.termios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PARODD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i64, i64* @MCS7840_UART_LCR_PARITYODD, align 8
  store i64 %69, i64* %7, align 8
  %70 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %74

71:                                               ; preds = %58
  %72 = load i64, i64* @MCS7840_UART_LCR_PARITYEVEN, align 8
  store i64 %72, i64* %7, align 8
  %73 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  br label %81

75:                                               ; preds = %47
  %76 = load i64, i64* @MCS7840_UART_LCR_PARITYON, align 8
  %77 = xor i64 %76, -1
  %78 = load i64, i64* %7, align 8
  %79 = and i64 %78, %77
  store i64 %79, i64* %7, align 8
  %80 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %75, %74
  %82 = load i64, i64* @MCS7840_UART_LCR_DATALENMASK, align 8
  %83 = xor i64 %82, -1
  %84 = load i64, i64* %7, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %7, align 8
  %86 = load %struct.termios*, %struct.termios** %4, align 8
  %87 = getelementptr inbounds %struct.termios, %struct.termios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CSIZE, align 4
  %90 = and i32 %88, %89
  switch i32 %90, label %111 [
    i32 131, label %91
    i32 130, label %96
    i32 129, label %101
    i32 128, label %106
  ]

91:                                               ; preds = %81
  %92 = load i64, i64* @MCS7840_UART_LCR_DATALEN5, align 8
  %93 = load i64, i64* %7, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %7, align 8
  %95 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %111

96:                                               ; preds = %81
  %97 = load i64, i64* @MCS7840_UART_LCR_DATALEN6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %111

101:                                              ; preds = %81
  %102 = load i64, i64* @MCS7840_UART_LCR_DATALEN7, align 8
  %103 = load i64, i64* %7, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %7, align 8
  %105 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %111

106:                                              ; preds = %81
  %107 = load i64, i64* @MCS7840_UART_LCR_DATALEN8, align 8
  %108 = load i64, i64* %7, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %7, align 8
  %110 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %111

111:                                              ; preds = %81, %106, %101, %96, %91
  %112 = load %struct.termios*, %struct.termios** %4, align 8
  %113 = getelementptr inbounds %struct.termios, %struct.termios* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CRTSCTS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load i64, i64* @MCS7840_UART_MCR_CTSRTS, align 8
  %120 = load i64, i64* %8, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %8, align 8
  %122 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %128

123:                                              ; preds = %111
  %124 = load i64, i64* @MCS7840_UART_MCR_CTSRTS, align 8
  %125 = xor i64 %124, -1
  %126 = load i64, i64* %8, align 8
  %127 = and i64 %126, %125
  store i64 %127, i64* %8, align 8
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.termios*, %struct.termios** %4, align 8
  %130 = getelementptr inbounds %struct.termios, %struct.termios* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CDTR_IFLOW, align 4
  %133 = load i32, i32* @CDSR_OFLOW, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = load i64, i64* @MCS7840_UART_MCR_DTRDSR, align 8
  %139 = load i64, i64* %8, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %8, align 8
  %141 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %147

142:                                              ; preds = %128
  %143 = load i64, i64* @MCS7840_UART_MCR_DTRDSR, align 8
  %144 = xor i64 %143, -1
  %145 = load i64, i64* %8, align 8
  %146 = and i64 %145, %144
  store i64 %146, i64* %8, align 8
  br label %147

147:                                              ; preds = %142, %137
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %150 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = load i64, i64* %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i64 %148, i64* %154, align 8
  %155 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i32, i32* @MCS7840_UART_REG_LCR, align 4
  %158 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %159 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %155, i64 %156, i32 %157, i64 %164)
  %166 = load i64, i64* %6, align 8
  %167 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %168 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i64, i64* %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i64 %166, i64 %173)
  %175 = load i64, i64* %8, align 8
  %176 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %177 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i64 %175, i64* %181, align 8
  %182 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %183 = load i64, i64* %6, align 8
  %184 = load i32, i32* @MCS7840_UART_REG_MCR, align 4
  %185 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %186 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %185, i32 0, i32 0
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i64, i64* %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %182, i64 %183, i32 %184, i64 %191)
  %193 = load i64, i64* %6, align 8
  %194 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %195 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = load i64, i64* %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i64 %193, i64 %200)
  %202 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %203 = load i64, i64* %6, align 8
  %204 = load %struct.termios*, %struct.termios** %4, align 8
  %205 = getelementptr inbounds %struct.termios, %struct.termios* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @umcs7840_set_baudrate(%struct.umcs7840_softc* %202, i64 %203, i32 %206)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc*, i64, i32, i64) #1

declare dso_local i32 @umcs7840_set_baudrate(%struct.umcs7840_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
