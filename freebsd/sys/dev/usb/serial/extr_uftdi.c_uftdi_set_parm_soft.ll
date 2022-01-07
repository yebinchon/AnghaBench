; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_set_parm_soft.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_set_parm_soft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uftdi_softc* }
%struct.uftdi_softc = type { i64 }
%struct.termios = type { i32, i32, i32*, i32 }
%struct.uftdi_param_config = type { i32, i32, i32, i32 }

@DEVT_SIO = common dso_local global i64 0, align 8
@CSTOPB = common dso_local global i32 0, align 4
@FTDI_SIO_SET_DATA_STOP_BITS_2 = common dso_local global i32 0, align 4
@FTDI_SIO_SET_DATA_STOP_BITS_1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@FTDI_SIO_SET_DATA_PARITY_ODD = common dso_local global i32 0, align 4
@FTDI_SIO_SET_DATA_PARITY_EVEN = common dso_local global i32 0, align 4
@FTDI_SIO_SET_DATA_PARITY_NONE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@FTDI_SIO_RTS_CTS_HS = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@FTDI_SIO_XON_XOFF_HS = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@FTDI_SIO_DISABLE_FLOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, %struct.termios*, %struct.uftdi_param_config*)* @uftdi_set_parm_soft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uftdi_set_parm_soft(%struct.ucom_softc* %0, %struct.termios* %1, %struct.uftdi_param_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucom_softc*, align 8
  %6 = alloca %struct.termios*, align 8
  %7 = alloca %struct.uftdi_param_config*, align 8
  %8 = alloca %struct.uftdi_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %5, align 8
  store %struct.termios* %1, %struct.termios** %6, align 8
  store %struct.uftdi_param_config* %2, %struct.uftdi_param_config** %7, align 8
  %10 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %11 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %10, i32 0, i32 0
  %12 = load %struct.uftdi_softc*, %struct.uftdi_softc** %11, align 8
  store %struct.uftdi_softc* %12, %struct.uftdi_softc** %8, align 8
  %13 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %14 = call i32 @memset(%struct.uftdi_param_config* %13, i32 0, i32 16)
  %15 = load %struct.uftdi_softc*, %struct.uftdi_softc** %8, align 8
  %16 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEVT_SIO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.uftdi_softc*, %struct.uftdi_softc** %8, align 8
  %22 = load %struct.termios*, %struct.termios** %6, align 8
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %26 = call i32 @uftdi_sio_encode_baudrate(%struct.uftdi_softc* %21, i32 %24, %struct.uftdi_param_config* %25)
  store i32 %26, i32* %9, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load %struct.uftdi_softc*, %struct.uftdi_softc** %8, align 8
  %29 = load %struct.termios*, %struct.termios** %6, align 8
  %30 = getelementptr inbounds %struct.termios, %struct.termios* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %33 = call i32 @uftdi_encode_baudrate(%struct.uftdi_softc* %28, i32 %31, %struct.uftdi_param_config* %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %163

39:                                               ; preds = %34
  %40 = load %struct.termios*, %struct.termios** %6, align 8
  %41 = getelementptr inbounds %struct.termios, %struct.termios* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CSTOPB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @FTDI_SIO_SET_DATA_STOP_BITS_2, align 4
  %48 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %49 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %39
  %51 = load i32, i32* @FTDI_SIO_SET_DATA_STOP_BITS_1, align 4
  %52 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %53 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.termios*, %struct.termios** %6, align 8
  %56 = getelementptr inbounds %struct.termios, %struct.termios* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PARENB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = load %struct.termios*, %struct.termios** %6, align 8
  %63 = getelementptr inbounds %struct.termios, %struct.termios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PARODD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @FTDI_SIO_SET_DATA_PARITY_ODD, align 4
  %70 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %71 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %80

74:                                               ; preds = %61
  %75 = load i32, i32* @FTDI_SIO_SET_DATA_PARITY_EVEN, align 4
  %76 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %77 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %68
  br label %87

81:                                               ; preds = %54
  %82 = load i32, i32* @FTDI_SIO_SET_DATA_PARITY_NONE, align 4
  %83 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %84 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %80
  %88 = load %struct.termios*, %struct.termios** %6, align 8
  %89 = getelementptr inbounds %struct.termios, %struct.termios* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CSIZE, align 4
  %92 = and i32 %90, %91
  switch i32 %92, label %117 [
    i32 131, label %93
    i32 130, label %99
    i32 129, label %105
    i32 128, label %111
  ]

93:                                               ; preds = %87
  %94 = call i32 @FTDI_SIO_SET_DATA_BITS(i32 5)
  %95 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %96 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %117

99:                                               ; preds = %87
  %100 = call i32 @FTDI_SIO_SET_DATA_BITS(i32 6)
  %101 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %102 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %117

105:                                              ; preds = %87
  %106 = call i32 @FTDI_SIO_SET_DATA_BITS(i32 7)
  %107 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %108 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %117

111:                                              ; preds = %87
  %112 = call i32 @FTDI_SIO_SET_DATA_BITS(i32 8)
  %113 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %114 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %87, %111, %105, %99, %93
  %118 = load %struct.termios*, %struct.termios** %6, align 8
  %119 = getelementptr inbounds %struct.termios, %struct.termios* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CRTSCTS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i32, i32* @FTDI_SIO_RTS_CTS_HS, align 4
  %126 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %127 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  br label %162

128:                                              ; preds = %117
  %129 = load %struct.termios*, %struct.termios** %6, align 8
  %130 = getelementptr inbounds %struct.termios, %struct.termios* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @IXON, align 4
  %133 = load i32, i32* @IXOFF, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %128
  %138 = load i32, i32* @FTDI_SIO_XON_XOFF_HS, align 4
  %139 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %140 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.termios*, %struct.termios** %6, align 8
  %142 = getelementptr inbounds %struct.termios, %struct.termios* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @VSTART, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %148 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.termios*, %struct.termios** %6, align 8
  %150 = getelementptr inbounds %struct.termios, %struct.termios* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @VSTOP, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %156 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %161

157:                                              ; preds = %128
  %158 = load i32, i32* @FTDI_SIO_DISABLE_FLOW_CTRL, align 4
  %159 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %160 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %137
  br label %162

162:                                              ; preds = %161, %124
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %37
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @memset(%struct.uftdi_param_config*, i32, i32) #1

declare dso_local i32 @uftdi_sio_encode_baudrate(%struct.uftdi_softc*, i32, %struct.uftdi_param_config*) #1

declare dso_local i32 @uftdi_encode_baudrate(%struct.uftdi_softc*, i32, %struct.uftdi_param_config*) #1

declare dso_local i32 @FTDI_SIO_SET_DATA_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
