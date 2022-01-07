; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.aue_softc = type { i32* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@AUE_PAR0 = common dso_local global i64 0, align 8
@AUE_CTL0 = common dso_local global i64 0, align 8
@AUE_CTL0_RXSTAT_APPEND = common dso_local global i32 0, align 4
@AUE_CTL0_RX_ENB = common dso_local global i32 0, align 4
@AUE_CTL0_TX_ENB = common dso_local global i32 0, align 4
@AUE_CTL2 = common dso_local global i64 0, align 8
@AUE_CTL2_EP3_CLR = common dso_local global i32 0, align 4
@AUE_BULK_DT_WR = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @aue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.aue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.aue_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.aue_softc* %7, %struct.aue_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @AUE_LOCK_ASSERT(%struct.aue_softc* %10, i32 %11)
  %13 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %14 = call i32 @aue_reset(%struct.aue_softc* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %21 = load i64, i64* @AUE_PAR0, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = call i32* @IF_LLADDR(%struct.ifnet* %25)
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @aue_csr_write_1(%struct.aue_softc* %20, i64 %24, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %37 = call i32 @aue_setpromisc(%struct.usb_ether* %36)
  %38 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %39 = call i32 @aue_setmulti(%struct.usb_ether* %38)
  %40 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %41 = load i64, i64* @AUE_CTL0, align 8
  %42 = load i32, i32* @AUE_CTL0_RXSTAT_APPEND, align 4
  %43 = load i32, i32* @AUE_CTL0_RX_ENB, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @aue_csr_write_1(%struct.aue_softc* %40, i64 %41, i32 %44)
  %46 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %47 = load i64, i64* @AUE_CTL0, align 8
  %48 = load i32, i32* @AUE_CTL0_TX_ENB, align 4
  %49 = call i32 @AUE_SETBIT(%struct.aue_softc* %46, i64 %47, i32 %48)
  %50 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %51 = load i64, i64* @AUE_CTL2, align 8
  %52 = load i32, i32* @AUE_CTL2_EP3_CLR, align 4
  %53 = call i32 @AUE_SETBIT(%struct.aue_softc* %50, i64 %51, i32 %52)
  %54 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %55 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @AUE_BULK_DT_WR, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usbd_xfer_set_stall(i32 %59)
  %61 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %67 = call i32 @aue_start(%struct.usb_ether* %66)
  ret void
}

declare dso_local %struct.aue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @AUE_LOCK_ASSERT(%struct.aue_softc*, i32) #1

declare dso_local i32 @aue_reset(%struct.aue_softc*) #1

declare dso_local i32 @aue_csr_write_1(%struct.aue_softc*, i64, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @aue_setpromisc(%struct.usb_ether*) #1

declare dso_local i32 @aue_setmulti(%struct.usb_ether*) #1

declare dso_local i32 @AUE_SETBIT(%struct.aue_softc*, i64, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @aue_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
