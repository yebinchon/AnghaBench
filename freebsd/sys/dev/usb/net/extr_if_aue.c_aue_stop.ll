; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.aue_softc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@AUE_FLAG_LINK = common dso_local global i32 0, align 4
@AUE_BULK_DT_WR = common dso_local global i64 0, align 8
@AUE_BULK_DT_RD = common dso_local global i64 0, align 8
@AUE_INTR_DT_RD = common dso_local global i64 0, align 8
@AUE_CTL0 = common dso_local global i32 0, align 4
@AUE_CTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @aue_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_stop(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.aue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.aue_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.aue_softc* %6, %struct.aue_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @AUE_LOCK_ASSERT(%struct.aue_softc* %9, i32 %10)
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @AUE_FLAG_LINK, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %21 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %25 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @AUE_BULK_DT_WR, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usbd_transfer_stop(i32 %29)
  %31 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %32 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @AUE_BULK_DT_RD, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usbd_transfer_stop(i32 %36)
  %38 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %39 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @AUE_INTR_DT_RD, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usbd_transfer_stop(i32 %43)
  %45 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %46 = load i32, i32* @AUE_CTL0, align 4
  %47 = call i32 @aue_csr_write_1(%struct.aue_softc* %45, i32 %46, i32 0)
  %48 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %49 = load i32, i32* @AUE_CTL1, align 4
  %50 = call i32 @aue_csr_write_1(%struct.aue_softc* %48, i32 %49, i32 0)
  %51 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %52 = call i32 @aue_reset(%struct.aue_softc* %51)
  ret void
}

declare dso_local %struct.aue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @AUE_LOCK_ASSERT(%struct.aue_softc*, i32) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

declare dso_local i32 @aue_csr_write_1(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @aue_reset(%struct.aue_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
