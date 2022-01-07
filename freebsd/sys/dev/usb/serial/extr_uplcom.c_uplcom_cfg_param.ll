; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uplcom_softc* }
%struct.uplcom_softc = type { i64, i32, i32, i64 }
%struct.termios = type { i32, i32 }
%struct.usb_cdc_line_state = type { i32, i32, i32, i32 }
%struct.usb_device_request = type { i64*, i64*, i64*, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"sc = %p\0A\00", align 1
@CSTOPB = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UCDC_STOP_BIT_1_5 = common dso_local global i32 0, align 4
@UCDC_STOP_BIT_2 = common dso_local global i32 0, align 4
@UCDC_STOP_BIT_1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UCDC_PARITY_ODD = common dso_local global i32 0, align 4
@UCDC_PARITY_EVEN = common dso_local global i32 0, align 4
@UCDC_PARITY_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"rate=0x%08x fmt=%d parity=%d bits=%d\0A\00", align 1
@UT_WRITE_CLASS_INTERFACE = common dso_local global i8* null, align 8
@UCDC_SET_LINE_CODING = common dso_local global i8* null, align 8
@UCDC_LINE_STATE_LENGTH = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"crtscts = on\0A\00", align 1
@UT_WRITE_VENDOR_DEVICE = common dso_local global i8* null, align 8
@UPLCOM_SET_REQUEST = common dso_local global i8* null, align 8
@TYPE_PL2303 = common dso_local global i64 0, align 8
@UPLCOM_SET_CRTSCTS_PL2303X = common dso_local global i32 0, align 4
@UPLCOM_SET_CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @uplcom_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uplcom_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.uplcom_softc*, align 8
  %6 = alloca %struct.usb_cdc_line_state, align 4
  %7 = alloca %struct.usb_device_request, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.uplcom_softc*, %struct.uplcom_softc** %9, align 8
  store %struct.uplcom_softc* %10, %struct.uplcom_softc** %5, align 8
  %11 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %12 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.uplcom_softc* %11)
  %13 = call i32 @memset(%struct.usb_cdc_line_state* %6, i32 0, i32 16)
  %14 = load %struct.termios*, %struct.termios** %4, align 8
  %15 = getelementptr inbounds %struct.termios, %struct.termios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, -2147483648
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.termios*, %struct.termios** %4, align 8
  %21 = getelementptr inbounds %struct.termios, %struct.termios* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @uplcom_baud_supported(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19, %2
  %26 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.termios*, %struct.termios** %4, align 8
  %29 = getelementptr inbounds %struct.termios, %struct.termios* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @USETDW(i32 %27, i32 %30)
  br label %40

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 3
  %34 = load %struct.termios*, %struct.termios** %4, align 8
  %35 = getelementptr inbounds %struct.termios, %struct.termios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @uplcom_encode_baud_rate_divisor(i32* %33, i32 %36)
  %38 = load %struct.termios*, %struct.termios** %4, align 8
  %39 = getelementptr inbounds %struct.termios, %struct.termios* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.termios*, %struct.termios** %4, align 8
  %42 = getelementptr inbounds %struct.termios, %struct.termios* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CSTOPB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.termios*, %struct.termios** %4, align 8
  %49 = getelementptr inbounds %struct.termios, %struct.termios* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CSIZE, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 131
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @UCDC_STOP_BIT_1_5, align 4
  %56 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  br label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @UCDC_STOP_BIT_2, align 4
  %59 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %64

61:                                               ; preds = %40
  %62 = load i32, i32* @UCDC_STOP_BIT_1, align 4
  %63 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %60
  %65 = load %struct.termios*, %struct.termios** %4, align 8
  %66 = getelementptr inbounds %struct.termios, %struct.termios* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PARENB, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.termios*, %struct.termios** %4, align 8
  %73 = getelementptr inbounds %struct.termios, %struct.termios* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PARODD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @UCDC_PARITY_ODD, align 4
  %80 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  br label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @UCDC_PARITY_EVEN, align 4
  %83 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %88

85:                                               ; preds = %64
  %86 = load i32, i32* @UCDC_PARITY_NONE, align 4
  %87 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %84
  %89 = load %struct.termios*, %struct.termios** %4, align 8
  %90 = getelementptr inbounds %struct.termios, %struct.termios* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CSIZE, align 4
  %93 = and i32 %91, %92
  switch i32 %93, label %102 [
    i32 131, label %94
    i32 130, label %96
    i32 129, label %98
    i32 128, label %100
  ]

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 0
  store i32 5, i32* %95, align 4
  br label %102

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 0
  store i32 6, i32* %97, align 4
  br label %102

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 0
  store i32 7, i32* %99, align 4
  br label %102

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 0
  store i32 8, i32* %101, align 4
  br label %102

102:                                              ; preds = %88, %100, %98, %96, %94
  %103 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @UGETDW(i32 %104)
  %106 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.usb_cdc_line_state, %struct.usb_cdc_line_state* %6, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %107, i32 %109, i32 %111)
  %113 = load i8*, i8** @UT_WRITE_CLASS_INTERFACE, align 8
  %114 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i8* %113, i8** %114, align 8
  %115 = load i8*, i8** @UCDC_SET_LINE_CODING, align 8
  %116 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i8* %115, i8** %116, align 8
  %117 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = call i32 @USETW(i64* %118, i32 0)
  %120 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %121 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  store i64 %122, i64* %125, align 8
  %126 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 1
  store i64 0, i64* %128, align 8
  %129 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* @UCDC_LINE_STATE_LENGTH, align 4
  %132 = call i32 @USETW(i64* %130, i32 %131)
  %133 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %134 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %137 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %136, i32 0, i32 1
  %138 = call i32 @ucom_cfg_do_request(i32 %135, i32* %137, %struct.usb_device_request* %7, %struct.usb_cdc_line_state* %6, i32 0, i32 1000)
  %139 = load %struct.termios*, %struct.termios** %4, align 8
  %140 = getelementptr inbounds %struct.termios, %struct.termios* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @CRTSCTS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %179

145:                                              ; preds = %102
  %146 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i8*, i8** @UT_WRITE_VENDOR_DEVICE, align 8
  %148 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i8* %147, i8** %148, align 8
  %149 = load i8*, i8** @UPLCOM_SET_REQUEST, align 8
  %150 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i8* %149, i8** %150, align 8
  %151 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %152 = load i64*, i64** %151, align 8
  %153 = call i32 @USETW(i64* %152, i32 0)
  %154 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %155 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TYPE_PL2303, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %145
  %160 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* @UPLCOM_SET_CRTSCTS_PL2303X, align 4
  %163 = call i32 @USETW(i64* %161, i32 %162)
  br label %169

164:                                              ; preds = %145
  %165 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* @UPLCOM_SET_CRTSCTS, align 4
  %168 = call i32 @USETW(i64* %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %159
  %170 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = call i32 @USETW(i64* %171, i32 0)
  %173 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %174 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %177 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %176, i32 0, i32 1
  %178 = call i32 @ucom_cfg_do_request(i32 %175, i32* %177, %struct.usb_device_request* %7, %struct.usb_cdc_line_state* null, i32 0, i32 1000)
  br label %199

179:                                              ; preds = %102
  %180 = load i8*, i8** @UT_WRITE_VENDOR_DEVICE, align 8
  %181 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i8* %180, i8** %181, align 8
  %182 = load i8*, i8** @UPLCOM_SET_REQUEST, align 8
  %183 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i8* %182, i8** %183, align 8
  %184 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %185 = load i64*, i64** %184, align 8
  %186 = call i32 @USETW(i64* %185, i32 0)
  %187 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = call i32 @USETW(i64* %188, i32 0)
  %190 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = call i32 @USETW(i64* %191, i32 0)
  %193 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %194 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %197 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %196, i32 0, i32 1
  %198 = call i32 @ucom_cfg_do_request(i32 %195, i32* %197, %struct.usb_device_request* %7, %struct.usb_cdc_line_state* null, i32 0, i32 1000)
  br label %199

199:                                              ; preds = %179, %169
  ret void
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @memset(%struct.usb_cdc_line_state*, i32, i32) #1

declare dso_local i64 @uplcom_baud_supported(i32) #1

declare dso_local i32 @USETDW(i32, i32) #1

declare dso_local i32 @uplcom_encode_baud_rate_divisor(i32*, i32) #1

declare dso_local i32 @UGETDW(i32) #1

declare dso_local i32 @USETW(i64*, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, %struct.usb_cdc_line_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
