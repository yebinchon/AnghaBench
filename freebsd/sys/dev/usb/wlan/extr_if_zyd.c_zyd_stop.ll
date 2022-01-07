; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32, i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@ZYD_FLAG_RUNNING = common dso_local global i32 0, align 4
@ZYD_BULK_WR = common dso_local global i64 0, align 8
@ZYD_BULK_RD = common dso_local global i64 0, align 8
@ZYD_FLAG_INITONCE = common dso_local global i32 0, align 4
@ZYD_MAC_RXFILTER = common dso_local global i32 0, align 4
@ZYD_CR_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zyd_softc*)* @zyd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zyd_stop(%struct.zyd_softc* %0) #0 {
  %2 = alloca %struct.zyd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.zyd_softc* %0, %struct.zyd_softc** %2, align 8
  %4 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @ZYD_LOCK_ASSERT(%struct.zyd_softc* %4, i32 %5)
  %7 = load i32, i32* @ZYD_FLAG_RUNNING, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %10 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %14 = call i32 @zyd_drain_mbufq(%struct.zyd_softc* %13)
  %15 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %16 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %15)
  %17 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %18 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @ZYD_BULK_WR, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usbd_transfer_drain(i32 %22)
  %24 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %25 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @ZYD_BULK_RD, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usbd_transfer_drain(i32 %29)
  %31 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %32 = call i32 @ZYD_LOCK(%struct.zyd_softc* %31)
  %33 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %34 = call i32 @zyd_unsetup_tx_list(%struct.zyd_softc* %33)
  %35 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %36 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ZYD_FLAG_INITONCE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %1
  br label %56

42:                                               ; preds = %1
  %43 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %44 = call i32 @zyd_switch_radio(%struct.zyd_softc* %43, i32 0)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %55

48:                                               ; preds = %42
  %49 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %50 = load i32, i32* @ZYD_MAC_RXFILTER, align 4
  %51 = call i32 @zyd_write32_m(%struct.zyd_softc* %49, i32 %50, i32 0)
  %52 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %53 = load i32, i32* @ZYD_CR_INTERRUPT, align 4
  %54 = call i32 @zyd_write32_m(%struct.zyd_softc* %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %48, %47
  br label %56

56:                                               ; preds = %55, %41
  ret void
}

declare dso_local i32 @ZYD_LOCK_ASSERT(%struct.zyd_softc*, i32) #1

declare dso_local i32 @zyd_drain_mbufq(%struct.zyd_softc*) #1

declare dso_local i32 @ZYD_UNLOCK(%struct.zyd_softc*) #1

declare dso_local i32 @usbd_transfer_drain(i32) #1

declare dso_local i32 @ZYD_LOCK(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_unsetup_tx_list(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_switch_radio(%struct.zyd_softc*, i32) #1

declare dso_local i32 @zyd_write32_m(%struct.zyd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
