; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_cfg_set_rts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_cfg_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.umoscom_softc* }
%struct.umoscom_softc = type { i32 }

@UMOSCOM_MCR_RTS = common dso_local global i32 0, align 4
@UMOSCOM_MCR = common dso_local global i32 0, align 4
@UMOSCOM_UART_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @umoscom_cfg_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umoscom_cfg_set_rts(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.umoscom_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 0
  %8 = load %struct.umoscom_softc*, %struct.umoscom_softc** %7, align 8
  store %struct.umoscom_softc* %8, %struct.umoscom_softc** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @UMOSCOM_MCR_RTS, align 4
  %13 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %14 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @UMOSCOM_MCR_RTS, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %21 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %11
  %25 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %26 = load i32, i32* @UMOSCOM_MCR, align 4
  %27 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %28 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UMOSCOM_UART_REG, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @umoscom_cfg_write(%struct.umoscom_softc* %25, i32 %26, i32 %31)
  ret void
}

declare dso_local i32 @umoscom_cfg_write(%struct.umoscom_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
