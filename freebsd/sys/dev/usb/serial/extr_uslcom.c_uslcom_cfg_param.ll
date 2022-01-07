; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uslcom_softc* }
%struct.uslcom_softc = type { i32, i32, i32 }
%struct.termios = type { i32, i64 }
%struct.usb_device_request = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USLCOM_WRITE = common dso_local global i8* null, align 8
@USLCOM_SET_BAUDRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Set baudrate failed (ignored)\0A\00", align 1
@CSTOPB = common dso_local global i32 0, align 4
@USLCOM_STOP_BITS_2 = common dso_local global i32 0, align 4
@USLCOM_STOP_BITS_1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@USLCOM_PARITY_ODD = common dso_local global i32 0, align 4
@USLCOM_PARITY_EVEN = common dso_local global i32 0, align 4
@USLCOM_PARITY_NONE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@USLCOM_SET_LINE_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Set format failed (ignored)\0A\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@USLCOM_FLOW_DTR_ON = common dso_local global i32 0, align 4
@USLCOM_FLOW_CTS_HS = common dso_local global i32 0, align 4
@USLCOM_FLOW_RTS_HS = common dso_local global i32 0, align 4
@USLCOM_FLOW_RTS_ON = common dso_local global i32 0, align 4
@USLCOM_SET_FLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Set flowcontrol failed (ignored)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @uslcom_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uslcom_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.uslcom_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i64], align 16
  %9 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %10 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %10, i32 0, i32 0
  %12 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  store %struct.uslcom_softc* %12, %struct.uslcom_softc** %5, align 8
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.termios*, %struct.termios** %4, align 8
  %15 = getelementptr inbounds %struct.termios, %struct.termios* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i8*, i8** @USLCOM_WRITE, align 8
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @USLCOM_SET_BAUDRATE, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @USETW(i32 %22, i32 0)
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %27 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @USETW(i32 %25, i32 %28)
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @USETW(i32 %31, i32 8)
  %33 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %34 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %37 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %36, i32 0, i32 1
  %38 = call i64 @ucom_cfg_do_request(i32 %35, i32* %37, %struct.usb_device_request* %6, i64* %7, i32 0, i32 1000)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %2
  %43 = load %struct.termios*, %struct.termios** %4, align 8
  %44 = getelementptr inbounds %struct.termios, %struct.termios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CSTOPB, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @USLCOM_STOP_BITS_2, align 4
  store i32 %50, i32* %9, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @USLCOM_STOP_BITS_1, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.termios*, %struct.termios** %4, align 8
  %55 = getelementptr inbounds %struct.termios, %struct.termios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PARENB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load %struct.termios*, %struct.termios** %4, align 8
  %62 = getelementptr inbounds %struct.termios, %struct.termios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PARODD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @USLCOM_PARITY_ODD, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @USLCOM_PARITY_EVEN, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %67
  br label %80

76:                                               ; preds = %53
  %77 = load i32, i32* @USLCOM_PARITY_NONE, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %75
  %81 = load %struct.termios*, %struct.termios** %4, align 8
  %82 = getelementptr inbounds %struct.termios, %struct.termios* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CSIZE, align 4
  %85 = and i32 %83, %84
  switch i32 %85, label %102 [
    i32 131, label %86
    i32 130, label %90
    i32 129, label %94
    i32 128, label %98
  ]

86:                                               ; preds = %80
  %87 = call i32 @USLCOM_SET_DATA_BITS(i32 5)
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %102

90:                                               ; preds = %80
  %91 = call i32 @USLCOM_SET_DATA_BITS(i32 6)
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %102

94:                                               ; preds = %80
  %95 = call i32 @USLCOM_SET_DATA_BITS(i32 7)
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %102

98:                                               ; preds = %80
  %99 = call i32 @USLCOM_SET_DATA_BITS(i32 8)
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %80, %98, %94, %90, %86
  %103 = load i8*, i8** @USLCOM_WRITE, align 8
  %104 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i8* %103, i8** %104, align 8
  %105 = load i32, i32* @USLCOM_SET_LINE_CTL, align 4
  %106 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @USETW(i32 %108, i32 %109)
  %111 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %114 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @USETW(i32 %112, i32 %115)
  %117 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @USETW(i32 %118, i32 0)
  %120 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %121 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %124 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %123, i32 0, i32 1
  %125 = call i64 @ucom_cfg_do_request(i32 %122, i32* %124, %struct.usb_device_request* %6, i64* null, i32 0, i32 1000)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %102
  %128 = call i32 @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %102
  %130 = load %struct.termios*, %struct.termios** %4, align 8
  %131 = getelementptr inbounds %struct.termios, %struct.termios* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CRTSCTS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load i32, i32* @USLCOM_FLOW_DTR_ON, align 4
  %138 = load i32, i32* @USLCOM_FLOW_CTS_HS, align 4
  %139 = or i32 %137, %138
  %140 = call i64 @htole32(i32 %139)
  %141 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  store i64 %140, i64* %141, align 16
  %142 = load i32, i32* @USLCOM_FLOW_RTS_HS, align 4
  %143 = call i64 @htole32(i32 %142)
  %144 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 1
  store i64 %143, i64* %144, align 8
  br label %152

145:                                              ; preds = %129
  %146 = load i32, i32* @USLCOM_FLOW_DTR_ON, align 4
  %147 = call i64 @htole32(i32 %146)
  %148 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  store i64 %147, i64* %148, align 16
  %149 = load i32, i32* @USLCOM_FLOW_RTS_ON, align 4
  %150 = call i64 @htole32(i32 %149)
  %151 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 1
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %145, %136
  %153 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 2
  store i64 0, i64* %153, align 16
  %154 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 3
  store i64 0, i64* %154, align 8
  %155 = load i8*, i8** @USLCOM_WRITE, align 8
  %156 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i8* %155, i8** %156, align 8
  %157 = load i32, i32* @USLCOM_SET_FLOW, align 4
  %158 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %157, i32* %158, align 4
  %159 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @USETW(i32 %160, i32 0)
  %162 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %165 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @USETW(i32 %163, i32 %166)
  %168 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @USETW(i32 %169, i32 32)
  %171 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %172 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %175 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %174, i32 0, i32 1
  %176 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %177 = call i64 @ucom_cfg_do_request(i32 %173, i32* %175, %struct.usb_device_request* %6, i64* %176, i32 0, i32 1000)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %152
  %180 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %152
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i64*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @USLCOM_SET_DATA_BITS(i32) #1

declare dso_local i64 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
