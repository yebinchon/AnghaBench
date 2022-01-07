; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvscom.c_uvscom_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvscom.c_uvscom_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uvscom_softc* }
%struct.uvscom_softc = type { i32 }
%struct.termios = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UVSCOM_SPEED_150BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_300BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_600BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_1200BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_2400BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_4800BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_9600BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_19200BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_38400BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_57600BPS = common dso_local global i32 0, align 4
@UVSCOM_SPEED_115200BPS = common dso_local global i32 0, align 4
@UVSCOM_SET_SPEED = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UVSCOM_STOP_BIT_2 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UVSCOM_PARITY_ODD = common dso_local global i32 0, align 4
@UVSCOM_PARITY_EVEN = common dso_local global i32 0, align 4
@UVSCOM_PARITY_NONE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UVSCOM_DATA_BIT_5 = common dso_local global i32 0, align 4
@UVSCOM_DATA_BIT_6 = common dso_local global i32 0, align 4
@UVSCOM_DATA_BIT_7 = common dso_local global i32 0, align 4
@UVSCOM_DATA_BIT_8 = common dso_local global i32 0, align 4
@UVSCOM_SET_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @uvscom_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvscom_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.uvscom_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 0
  %9 = load %struct.uvscom_softc*, %struct.uvscom_softc** %8, align 8
  store %struct.uvscom_softc* %9, %struct.uvscom_softc** %5, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.termios*, %struct.termios** %4, align 8
  %12 = getelementptr inbounds %struct.termios, %struct.termios* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %36 [
    i32 140, label %14
    i32 137, label %16
    i32 133, label %18
    i32 141, label %20
    i32 138, label %22
    i32 135, label %24
    i32 132, label %26
    i32 139, label %28
    i32 136, label %30
    i32 134, label %32
    i32 142, label %34
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @UVSCOM_SPEED_150BPS, align 4
  store i32 %15, i32* %6, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* @UVSCOM_SPEED_300BPS, align 4
  store i32 %17, i32* %6, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load i32, i32* @UVSCOM_SPEED_600BPS, align 4
  store i32 %19, i32* %6, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load i32, i32* @UVSCOM_SPEED_1200BPS, align 4
  store i32 %21, i32* %6, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load i32, i32* @UVSCOM_SPEED_2400BPS, align 4
  store i32 %23, i32* %6, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load i32, i32* @UVSCOM_SPEED_4800BPS, align 4
  store i32 %25, i32* %6, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load i32, i32* @UVSCOM_SPEED_9600BPS, align 4
  store i32 %27, i32* %6, align 4
  br label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @UVSCOM_SPEED_19200BPS, align 4
  store i32 %29, i32* %6, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load i32, i32* @UVSCOM_SPEED_38400BPS, align 4
  store i32 %31, i32* %6, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @UVSCOM_SPEED_57600BPS, align 4
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @UVSCOM_SPEED_115200BPS, align 4
  store i32 %35, i32* %6, align 4
  br label %37

36:                                               ; preds = %2
  br label %107

37:                                               ; preds = %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14
  %38 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %39 = load i32, i32* @UVSCOM_SET_SPEED, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @uvscom_cfg_write(%struct.uvscom_softc* %38, i32 %39, i32 %40)
  store i32 0, i32* %6, align 4
  %42 = load %struct.termios*, %struct.termios** %4, align 8
  %43 = getelementptr inbounds %struct.termios, %struct.termios* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CSTOPB, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* @UVSCOM_STOP_BIT_2, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = load %struct.termios*, %struct.termios** %4, align 8
  %54 = getelementptr inbounds %struct.termios, %struct.termios* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PARENB, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %52
  %60 = load %struct.termios*, %struct.termios** %4, align 8
  %61 = getelementptr inbounds %struct.termios, %struct.termios* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PARODD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @UVSCOM_PARITY_ODD, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %74

70:                                               ; preds = %59
  %71 = load i32, i32* @UVSCOM_PARITY_EVEN, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %79

75:                                               ; preds = %52
  %76 = load i32, i32* @UVSCOM_PARITY_NONE, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %74
  %80 = load %struct.termios*, %struct.termios** %4, align 8
  %81 = getelementptr inbounds %struct.termios, %struct.termios* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CSIZE, align 4
  %84 = and i32 %82, %83
  switch i32 %84, label %97 [
    i32 131, label %85
    i32 130, label %89
    i32 129, label %93
    i32 128, label %98
  ]

85:                                               ; preds = %79
  %86 = load i32, i32* @UVSCOM_DATA_BIT_5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %102

89:                                               ; preds = %79
  %90 = load i32, i32* @UVSCOM_DATA_BIT_6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %102

93:                                               ; preds = %79
  %94 = load i32, i32* @UVSCOM_DATA_BIT_7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %102

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %79, %97
  %99 = load i32, i32* @UVSCOM_DATA_BIT_8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %98, %93, %89, %85
  %103 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %104 = load i32, i32* @UVSCOM_SET_PARAM, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @uvscom_cfg_write(%struct.uvscom_softc* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %36
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @uvscom_cfg_write(%struct.uvscom_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
