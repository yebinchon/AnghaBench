; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_csum_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_csum_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.axe_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@AXE_FLAG_772B = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@AXE_TXCSUM_IP = common dso_local global i32 0, align 4
@AXE_TXCSUM_TCP = common dso_local global i32 0, align 4
@AXE_TXCSUM_UDP = common dso_local global i32 0, align 4
@AXE_772B_CMD_WRITE_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@AXE_RXCSUM_IP = common dso_local global i32 0, align 4
@AXE_RXCSUM_IPVE = common dso_local global i32 0, align 4
@AXE_RXCSUM_TCP = common dso_local global i32 0, align 4
@AXE_RXCSUM_UDP = common dso_local global i32 0, align 4
@AXE_RXCSUM_ICMP = common dso_local global i32 0, align 4
@AXE_RXCSUM_IGMP = common dso_local global i32 0, align 4
@AXE_772B_CMD_WRITE_RXCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @axe_csum_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_csum_cfg(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.axe_softc* @uether_getsc(%struct.usb_ether* %7)
  store %struct.axe_softc* %8, %struct.axe_softc** %3, align 8
  %9 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @AXE_LOCK_ASSERT(%struct.axe_softc* %9, i32 %10)
  %12 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %13 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AXE_FLAG_772B, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %1
  %19 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %20 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %19)
  store %struct.ifnet* %20, %struct.ifnet** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFCAP_TXCSUM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load i32, i32* @AXE_TXCSUM_IP, align 4
  %29 = load i32, i32* @AXE_TXCSUM_TCP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AXE_TXCSUM_UDP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %18
  %36 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %37 = load i32, i32* @AXE_772B_CMD_WRITE_TXCSUM, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @axe_cmd(%struct.axe_softc* %36, i32 %37, i32 %38, i32 %39, i32* null)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFCAP_RXCSUM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %35
  %48 = load i32, i32* @AXE_RXCSUM_IP, align 4
  %49 = load i32, i32* @AXE_RXCSUM_IPVE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @AXE_RXCSUM_TCP, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @AXE_RXCSUM_UDP, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @AXE_RXCSUM_ICMP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @AXE_RXCSUM_IGMP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %47, %35
  %62 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %63 = load i32, i32* @AXE_772B_CMD_WRITE_RXCSUM, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @axe_cmd(%struct.axe_softc* %62, i32 %63, i32 %64, i32 %65, i32* null)
  br label %67

67:                                               ; preds = %61, %1
  ret void
}

declare dso_local %struct.axe_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @AXE_LOCK_ASSERT(%struct.axe_softc*, i32) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
