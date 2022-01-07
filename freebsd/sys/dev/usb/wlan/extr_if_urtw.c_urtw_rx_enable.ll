; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_rx_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32* }

@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_8187B_BULK_RX = common dso_local global i64 0, align 8
@URTW_8187L_BULK_RX = common dso_local global i64 0, align 8
@URTW_CMD = common dso_local global i32 0, align 4
@URTW_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_rx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_rx_enable(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %5 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %6 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @URTW_RTL8187B, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %13 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @URTW_8187B_BULK_RX, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %20 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @URTW_8187L_BULK_RX, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %18, %11
  %26 = phi i32 [ %17, %11 ], [ %24, %18 ]
  %27 = call i32 @usbd_transfer_start(i32 %26)
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %29 = call i64 @urtw_rx_setconf(%struct.urtw_softc* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %51

33:                                               ; preds = %25
  %34 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %35 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @URTW_RTL8187B, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %42 = load i32, i32* @URTW_CMD, align 4
  %43 = call i32 @urtw_read8_m(%struct.urtw_softc* %41, i32 %42, i32* %3)
  %44 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %45 = load i32, i32* @URTW_CMD, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @URTW_CMD_RX_ENABLE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @urtw_write8_m(%struct.urtw_softc* %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %40, %33
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i64 @urtw_rx_setconf(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
