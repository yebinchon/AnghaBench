; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_cfg_set_rts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ucom_cfg_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uhso_softc* }
%struct.uhso_softc = type { i32, i32 }

@UHSO_IF_BULK = common dso_local global i32 0, align 4
@UCDC_LINE_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @uhso_ucom_cfg_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_ucom_cfg_set_rts(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uhso_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 0
  %8 = load %struct.uhso_softc*, %struct.uhso_softc** %7, align 8
  store %struct.uhso_softc* %8, %struct.uhso_softc** %5, align 8
  %9 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %10 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @UHSO_IFACE_USB_TYPE(i32 %11)
  %13 = load i32, i32* @UHSO_IF_BULK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %36

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @UCDC_LINE_RTS, align 4
  %22 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %23 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @UCDC_LINE_RTS, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %35 = call i32 @uhso_bs_cfg(%struct.uhso_softc* %34)
  br label %36

36:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32 @UHSO_IFACE_USB_TYPE(i32) #1

declare dso_local i32 @uhso_bs_cfg(%struct.uhso_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
