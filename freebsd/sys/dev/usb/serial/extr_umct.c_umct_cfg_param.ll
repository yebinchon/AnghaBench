; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umct.c_umct_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umct.c_umct_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.umct_softc* }
%struct.umct_softc = type { i32 }
%struct.termios = type { i32, i32 }

@UMCT_SET_BAUD = common dso_local global i32 0, align 4
@UMCT_SET_BAUD_SIZE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UMCT_SET_LCR = common dso_local global i32 0, align 4
@UMCT_SET_LCR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @umct_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umct_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.umct_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 0
  %9 = load %struct.umct_softc*, %struct.umct_softc** %8, align 8
  store %struct.umct_softc* %9, %struct.umct_softc** %5, align 8
  %10 = load %struct.termios*, %struct.termios** %4, align 8
  %11 = getelementptr inbounds %struct.termios, %struct.termios* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @umct_calc_baud(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %15 = load i32, i32* @UMCT_SET_BAUD, align 4
  %16 = load i32, i32* @UMCT_SET_BAUD_SIZE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @umct_cfg_do_request(%struct.umct_softc* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %20 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 64
  store i32 %22, i32* %6, align 4
  %23 = load %struct.termios*, %struct.termios** %4, align 8
  %24 = getelementptr inbounds %struct.termios, %struct.termios* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CSIZE, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %36 [
    i32 131, label %28
    i32 130, label %30
    i32 129, label %33
    i32 128, label %37
  ]

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %6, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %6, align 4
  br label %40

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %2, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, 3
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %33, %30, %28
  %41 = load %struct.termios*, %struct.termios** %4, align 8
  %42 = getelementptr inbounds %struct.termios, %struct.termios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CSTOPB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 4, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.termios*, %struct.termios** %4, align 8
  %52 = getelementptr inbounds %struct.termios, %struct.termios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PARENB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %40
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, 8
  store i32 %59, i32* %6, align 4
  %60 = load %struct.termios*, %struct.termios** %4, align 8
  %61 = getelementptr inbounds %struct.termios, %struct.termios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PARODD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 16
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %57, %40
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %73 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %75 = load i32, i32* @UMCT_SET_LCR, align 4
  %76 = load i32, i32* @UMCT_SET_LCR_SIZE, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @umct_cfg_do_request(%struct.umct_softc* %74, i32 %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @umct_calc_baud(i32) #1

declare dso_local i32 @umct_cfg_do_request(%struct.umct_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
