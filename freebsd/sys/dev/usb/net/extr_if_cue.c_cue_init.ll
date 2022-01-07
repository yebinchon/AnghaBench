; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.cue_softc = type { i32* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@CUE_PAR0 = common dso_local global i64 0, align 8
@CUE_ETHCTL = common dso_local global i64 0, align 8
@CUE_ETHCTL_RX_ON = common dso_local global i32 0, align 4
@CUE_ETHCTL_MCAST_ON = common dso_local global i32 0, align 4
@CUE_RX_BUFPKTS = common dso_local global i64 0, align 8
@CUE_RX_FRAMES = common dso_local global i32 0, align 4
@CUE_TX_BUFPKTS = common dso_local global i64 0, align 8
@CUE_TX_FRAMES = common dso_local global i32 0, align 4
@CUE_ADVANCED_OPMODES = common dso_local global i64 0, align 8
@CUE_AOP_EMBED_RXLEN = common dso_local global i32 0, align 4
@CUE_LEDCTL = common dso_local global i64 0, align 8
@CUE_LEDCTL_FOLLOW_LINK = common dso_local global i32 0, align 4
@CUE_BULK_DT_WR = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @cue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cue_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.cue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.cue_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.cue_softc* %7, %struct.cue_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @CUE_LOCK_ASSERT(%struct.cue_softc* %10, i32 %11)
  %13 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %14 = call i32 @cue_stop(%struct.usb_ether* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %21 = load i64, i64* @CUE_PAR0, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %21, %23
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = call i32* @IF_LLADDR(%struct.ifnet* %25)
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cue_csr_write_1(%struct.cue_softc* %20, i64 %24, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %37 = load i64, i64* @CUE_ETHCTL, align 8
  %38 = load i32, i32* @CUE_ETHCTL_RX_ON, align 4
  %39 = load i32, i32* @CUE_ETHCTL_MCAST_ON, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @cue_csr_write_1(%struct.cue_softc* %36, i64 %37, i32 %40)
  %42 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %43 = call i32 @cue_setpromisc(%struct.usb_ether* %42)
  %44 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %45 = load i64, i64* @CUE_RX_BUFPKTS, align 8
  %46 = load i32, i32* @CUE_RX_FRAMES, align 4
  %47 = call i32 @cue_csr_write_1(%struct.cue_softc* %44, i64 %45, i32 %46)
  %48 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %49 = load i64, i64* @CUE_TX_BUFPKTS, align 8
  %50 = load i32, i32* @CUE_TX_FRAMES, align 4
  %51 = call i32 @cue_csr_write_1(%struct.cue_softc* %48, i64 %49, i32 %50)
  %52 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %53 = load i64, i64* @CUE_ADVANCED_OPMODES, align 8
  %54 = load i32, i32* @CUE_AOP_EMBED_RXLEN, align 4
  %55 = or i32 %54, 1
  %56 = call i32 @cue_csr_write_1(%struct.cue_softc* %52, i64 %53, i32 %55)
  %57 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %58 = load i64, i64* @CUE_LEDCTL, align 8
  %59 = load i32, i32* @CUE_LEDCTL_FOLLOW_LINK, align 4
  %60 = call i32 @cue_csr_write_1(%struct.cue_softc* %57, i64 %58, i32 %59)
  %61 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %62 = getelementptr inbounds %struct.cue_softc, %struct.cue_softc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @CUE_BULK_DT_WR, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usbd_xfer_set_stall(i32 %66)
  %68 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %74 = call i32 @cue_start(%struct.usb_ether* %73)
  ret void
}

declare dso_local %struct.cue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @CUE_LOCK_ASSERT(%struct.cue_softc*, i32) #1

declare dso_local i32 @cue_stop(%struct.usb_ether*) #1

declare dso_local i32 @cue_csr_write_1(%struct.cue_softc*, i64, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @cue_setpromisc(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @cue_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
