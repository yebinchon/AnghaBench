; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uchcom_softc* }
%struct.uchcom_softc = type { i64 }
%struct.termios = type { i32 }

@UCHCOM_REQ_RESET = common dso_local global i32 0, align 4
@UCHCOM_VER_30 = common dso_local global i64 0, align 8
@UCHCOM_REG_LCR1 = common dso_local global i32 0, align 4
@UCHCOM_REG_LCR2 = common dso_local global i32 0, align 4
@UCHCOM_LCR1_RX = common dso_local global i32 0, align 4
@UCHCOM_LCR1_TX = common dso_local global i32 0, align 4
@UCHCOM_LCR1_CS8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @uchcom_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uchcom_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.uchcom_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 0
  %8 = load %struct.uchcom_softc*, %struct.uchcom_softc** %7, align 8
  store %struct.uchcom_softc* %8, %struct.uchcom_softc** %5, align 8
  %9 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %10 = call i32 @uchcom_get_version(%struct.uchcom_softc* %9, i32* null)
  %11 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %12 = load i32, i32* @UCHCOM_REQ_RESET, align 4
  %13 = call i32 @uchcom_ctrl_write(%struct.uchcom_softc* %11, i32 %12, i32 0, i32 0)
  %14 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %15 = load %struct.termios*, %struct.termios** %4, align 8
  %16 = getelementptr inbounds %struct.termios, %struct.termios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @uchcom_set_baudrate(%struct.uchcom_softc* %14, i32 %17)
  %19 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %20 = getelementptr inbounds %struct.uchcom_softc, %struct.uchcom_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UCHCOM_VER_30, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %26 = load i32, i32* @UCHCOM_REG_LCR1, align 4
  %27 = load i32, i32* @UCHCOM_REG_LCR2, align 4
  %28 = call i32 @uchcom_read_reg(%struct.uchcom_softc* %25, i32 %26, i32* null, i32 %27, i32* null)
  %29 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %30 = load i32, i32* @UCHCOM_REG_LCR1, align 4
  %31 = load i32, i32* @UCHCOM_REG_LCR2, align 4
  %32 = call i32 @uchcom_write_reg(%struct.uchcom_softc* %29, i32 %30, i32 80, i32 %31, i32 0)
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %35 = load i32, i32* @UCHCOM_REG_LCR1, align 4
  %36 = load i32, i32* @UCHCOM_LCR1_RX, align 4
  %37 = load i32, i32* @UCHCOM_LCR1_TX, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UCHCOM_LCR1_CS8, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UCHCOM_REG_LCR2, align 4
  %42 = call i32 @uchcom_write_reg(%struct.uchcom_softc* %34, i32 %35, i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %33, %24
  %44 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %45 = call i32 @uchcom_update_status(%struct.uchcom_softc* %44)
  %46 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %47 = load i32, i32* @UCHCOM_REQ_RESET, align 4
  %48 = call i32 @uchcom_ctrl_write(%struct.uchcom_softc* %46, i32 %47, i32 20511, i32 55562)
  %49 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %50 = load %struct.termios*, %struct.termios** %4, align 8
  %51 = getelementptr inbounds %struct.termios, %struct.termios* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @uchcom_set_baudrate(%struct.uchcom_softc* %49, i32 %52)
  %54 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %55 = call i32 @uchcom_set_dtr_rts(%struct.uchcom_softc* %54)
  %56 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %57 = call i32 @uchcom_update_status(%struct.uchcom_softc* %56)
  ret void
}

declare dso_local i32 @uchcom_get_version(%struct.uchcom_softc*, i32*) #1

declare dso_local i32 @uchcom_ctrl_write(%struct.uchcom_softc*, i32, i32, i32) #1

declare dso_local i32 @uchcom_set_baudrate(%struct.uchcom_softc*, i32) #1

declare dso_local i32 @uchcom_read_reg(%struct.uchcom_softc*, i32, i32*, i32, i32*) #1

declare dso_local i32 @uchcom_write_reg(%struct.uchcom_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @uchcom_update_status(%struct.uchcom_softc*) #1

declare dso_local i32 @uchcom_set_dtr_rts(%struct.uchcom_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
