; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_txstatus_eof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_txstatus_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.urtw_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@URTW_STATUS_TYPE_TXCLOSE = common dso_local global i32 0, align 4
@URTW_TX_MAXRETRY = common dso_local global i32 0, align 4
@URTW_DEBUG_TXSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pktretry %d seq %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @urtw_txstatus_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_txstatus_eof(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %11 = call %struct.urtw_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.urtw_softc* %11, %struct.urtw_softc** %3, align 8
  %12 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %13 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %12, i32 0, i32 1
  store %struct.ieee80211com* %13, %struct.ieee80211com** %4, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %15 = call i32 @usbd_xfer_status(%struct.usb_xfer* %14, i32* %5, i32* null, i32* null, i32* null)
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %22 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le64toh(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 30
  %27 = and i32 %26, 3
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @URTW_STATUS_TYPE_TXCLOSE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 255
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 255
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @URTW_TX_MAXRETRY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @counter_u64_add(i32 %43, i32 1)
  br label %45

45:                                               ; preds = %40, %31
  %46 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %47 = load i32, i32* @URTW_DEBUG_TXSTATUS, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @DPRINTF(%struct.urtw_softc* %46, i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %19, %45, %20
  ret void
}

declare dso_local %struct.urtw_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.urtw_softc*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
