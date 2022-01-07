; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.axge_softc = type { i32* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@AXGE_ACCESS_MAC = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@AXGE_NIDR = common dso_local global i32 0, align 4
@AXGE_PWLLR = common dso_local global i32 0, align 4
@AXGE_PWLHR = common dso_local global i32 0, align 4
@AXGE_MMSR = common dso_local global i32 0, align 4
@AXGE_MSR = common dso_local global i32 0, align 4
@MSR_GM = common dso_local global i32 0, align 4
@MSR_FD = common dso_local global i32 0, align 4
@MSR_RFC = common dso_local global i32 0, align 4
@MSR_TFC = common dso_local global i32 0, align 4
@MSR_RE = common dso_local global i32 0, align 4
@AXGE_BULK_DT_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @axge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axge_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.axge_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.axge_softc* %6, %struct.axge_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @AXGE_LOCK_ASSERT(%struct.axge_softc* %9, i32 %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %79

19:                                               ; preds = %1
  %20 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %21 = call i32 @axge_stop(%struct.usb_ether* %20)
  %22 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %23 = call i32 @axge_reset(%struct.axge_softc* %22)
  %24 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %25 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %26 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %27 = load i32, i32* @AXGE_NIDR, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = call i32 @IF_LLADDR(%struct.ifnet* %28)
  %30 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %31 = call i32 @axge_write_mem(%struct.axge_softc* %24, i32 %25, i32 %26, i32 %27, i32 %29, i32 %30)
  %32 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %33 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %34 = load i32, i32* @AXGE_PWLLR, align 4
  %35 = call i32 @axge_write_cmd_1(%struct.axge_softc* %32, i32 %33, i32 %34, i32 52)
  %36 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %37 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %38 = load i32, i32* @AXGE_PWLHR, align 4
  %39 = call i32 @axge_write_cmd_1(%struct.axge_softc* %36, i32 %37, i32 %38, i32 82)
  %40 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %41 = call i32 @axge_csum_cfg(%struct.usb_ether* %40)
  %42 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %43 = call i32 @axge_rxfilter(%struct.usb_ether* %42)
  %44 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %45 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %46 = load i32, i32* @AXGE_MMSR, align 4
  %47 = call i32 @axge_write_cmd_1(%struct.axge_softc* %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %49 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %50 = load i32, i32* @AXGE_MMSR, align 4
  %51 = call i32 @axge_read_cmd_1(%struct.axge_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %53 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %54 = load i32, i32* @AXGE_MSR, align 4
  %55 = load i32, i32* @MSR_GM, align 4
  %56 = load i32, i32* @MSR_FD, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MSR_RFC, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MSR_TFC, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MSR_RE, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @axge_write_cmd_2(%struct.axge_softc* %52, i32 %53, i32 2, i32 %54, i32 %63)
  %65 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %66 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @AXGE_BULK_DT_WR, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usbd_xfer_set_stall(i32 %70)
  %72 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %73 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = call i32 @axge_ifmedia_upd(%struct.ifnet* %77)
  br label %79

79:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.axge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @AXGE_LOCK_ASSERT(%struct.axge_softc*, i32) #1

declare dso_local i32 @axge_stop(%struct.usb_ether*) #1

declare dso_local i32 @axge_reset(%struct.axge_softc*) #1

declare dso_local i32 @axge_write_mem(%struct.axge_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @axge_write_cmd_1(%struct.axge_softc*, i32, i32, i32) #1

declare dso_local i32 @axge_csum_cfg(%struct.usb_ether*) #1

declare dso_local i32 @axge_rxfilter(%struct.usb_ether*) #1

declare dso_local i32 @axge_read_cmd_1(%struct.axge_softc*, i32, i32) #1

declare dso_local i32 @axge_write_cmd_2(%struct.axge_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @axge_ifmedia_upd(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
