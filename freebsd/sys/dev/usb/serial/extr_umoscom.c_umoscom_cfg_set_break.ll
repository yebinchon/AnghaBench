; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_cfg_set_break.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_cfg_set_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.umoscom_softc* }
%struct.umoscom_softc = type { i32 }

@UMOSCOM_LCR_BREAK = common dso_local global i32 0, align 4
@UMOSCOM_LCR = common dso_local global i32 0, align 4
@UMOSCOM_UART_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @umoscom_cfg_set_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umoscom_cfg_set_break(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.umoscom_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 0
  %9 = load %struct.umoscom_softc*, %struct.umoscom_softc** %8, align 8
  store %struct.umoscom_softc* %9, %struct.umoscom_softc** %5, align 8
  %10 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %11 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @UMOSCOM_LCR_BREAK, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %21 = load i32, i32* @UMOSCOM_LCR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @UMOSCOM_UART_REG, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @umoscom_cfg_write(%struct.umoscom_softc* %20, i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @umoscom_cfg_write(%struct.umoscom_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
