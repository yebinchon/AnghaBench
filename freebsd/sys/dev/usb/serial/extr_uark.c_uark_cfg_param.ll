; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uark.c_uark_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uark.c_uark_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uark_softc* }
%struct.uark_softc = type { i32 }
%struct.termios = type { i32, i32 }

@UARK_BAUD_REF = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UARK_STOP_BITS_2 = common dso_local global i32 0, align 4
@UARK_STOP_BITS_1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UARK_PARITY_ODD = common dso_local global i32 0, align 4
@UARK_PARITY_EVEN = common dso_local global i32 0, align 4
@UARK_PARITY_NONE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @uark_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uark_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.uark_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.uark_softc*, %struct.uark_softc** %9, align 8
  store %struct.uark_softc* %10, %struct.uark_softc** %5, align 8
  %11 = load %struct.termios*, %struct.termios** %4, align 8
  %12 = getelementptr inbounds %struct.termios, %struct.termios* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @UARK_BAUD_REF, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %21 = call i32 @uark_cfg_write(%struct.uark_softc* %20, i32 3, i32 131)
  %22 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 255
  %25 = call i32 @uark_cfg_write(%struct.uark_softc* %22, i32 0, i32 %24)
  %26 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 8
  %29 = call i32 @uark_cfg_write(%struct.uark_softc* %26, i32 1, i32 %28)
  %30 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %31 = call i32 @uark_cfg_write(%struct.uark_softc* %30, i32 3, i32 3)
  %32 = load %struct.termios*, %struct.termios** %4, align 8
  %33 = getelementptr inbounds %struct.termios, %struct.termios* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CSTOPB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @UARK_STOP_BITS_2, align 4
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @UARK_STOP_BITS_1, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load %struct.termios*, %struct.termios** %4, align 8
  %44 = getelementptr inbounds %struct.termios, %struct.termios* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PARENB, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load %struct.termios*, %struct.termios** %4, align 8
  %51 = getelementptr inbounds %struct.termios, %struct.termios* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PARODD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @UARK_PARITY_ODD, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @UARK_PARITY_EVEN, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %69

65:                                               ; preds = %42
  %66 = load i32, i32* @UARK_PARITY_NONE, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %64
  %70 = load %struct.termios*, %struct.termios** %4, align 8
  %71 = getelementptr inbounds %struct.termios, %struct.termios* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CSIZE, align 4
  %74 = and i32 %72, %73
  switch i32 %74, label %87 [
    i32 131, label %75
    i32 130, label %79
    i32 129, label %83
    i32 128, label %88
  ]

75:                                               ; preds = %69
  %76 = call i32 @UARK_SET_DATA_BITS(i32 5)
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %92

79:                                               ; preds = %69
  %80 = call i32 @UARK_SET_DATA_BITS(i32 6)
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %92

83:                                               ; preds = %69
  %84 = call i32 @UARK_SET_DATA_BITS(i32 7)
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %92

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %69, %87
  %89 = call i32 @UARK_SET_DATA_BITS(i32 8)
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %88, %83, %79, %75
  %93 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %94 = call i32 @uark_cfg_write(%struct.uark_softc* %93, i32 3, i32 0)
  %95 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @uark_cfg_write(%struct.uark_softc* %95, i32 3, i32 %96)
  ret void
}

declare dso_local i32 @uark_cfg_write(%struct.uark_softc*, i32, i32) #1

declare dso_local i32 @UARK_SET_DATA_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
