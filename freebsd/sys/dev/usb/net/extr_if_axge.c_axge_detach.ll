; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axge_softc = type { i32, i32, %struct.usb_ether }
%struct.usb_ether = type { i32 }

@AXGE_ACCESS_MAC = common dso_local global i32 0, align 4
@AXGE_EPPRCR = common dso_local global i32 0, align 4
@EPPRCR_BZ = common dso_local global i32 0, align 4
@EPPRCR_IPRL = common dso_local global i32 0, align 4
@AXGE_CLK_SELECT = common dso_local global i32 0, align 4
@AXGE_RCR = common dso_local global i32 0, align 4
@AXGE_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @axge_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axge_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axge_softc*, align 8
  %4 = alloca %struct.usb_ether*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.axge_softc* @device_get_softc(i32 %6)
  store %struct.axge_softc* %7, %struct.axge_softc** %3, align 8
  %8 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %8, i32 0, i32 2
  store %struct.usb_ether* %9, %struct.usb_ether** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_attached(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %1
  %14 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %15 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %14, i32 0, i32 0
  %16 = call i32 @usb_proc_drain(i32* %15)
  %17 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %18 = call i32 @AXGE_LOCK(%struct.axge_softc* %17)
  %19 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %20 = call i32 @axge_stop(%struct.usb_ether* %19)
  %21 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %22 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %23 = load i32, i32* @AXGE_EPPRCR, align 4
  %24 = call i32 @axge_read_cmd_2(%struct.axge_softc* %21, i32 %22, i32 2, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @EPPRCR_BZ, align 4
  %26 = load i32, i32* @EPPRCR_IPRL, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %31 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %32 = load i32, i32* @AXGE_EPPRCR, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @axge_write_cmd_2(%struct.axge_softc* %30, i32 %31, i32 2, i32 %32, i32 %33)
  %35 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %36 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %37 = load i32, i32* @AXGE_CLK_SELECT, align 4
  %38 = call i32 @axge_write_cmd_1(%struct.axge_softc* %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %40 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %41 = load i32, i32* @AXGE_RCR, align 4
  %42 = call i32 @axge_write_cmd_2(%struct.axge_softc* %39, i32 %40, i32 2, i32 %41, i32 0)
  %43 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %44 = call i32 @AXGE_UNLOCK(%struct.axge_softc* %43)
  br label %45

45:                                               ; preds = %13, %1
  %46 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %47 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AXGE_N_TRANSFER, align 4
  %50 = call i32 @usbd_transfer_unsetup(i32 %48, i32 %49)
  %51 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %52 = call i32 @uether_ifdetach(%struct.usb_ether* %51)
  %53 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %54 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %53, i32 0, i32 0
  %55 = call i32 @mtx_destroy(i32* %54)
  ret i32 0
}

declare dso_local %struct.axge_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @usb_proc_drain(i32*) #1

declare dso_local i32 @AXGE_LOCK(%struct.axge_softc*) #1

declare dso_local i32 @axge_stop(%struct.usb_ether*) #1

declare dso_local i32 @axge_read_cmd_2(%struct.axge_softc*, i32, i32, i32) #1

declare dso_local i32 @axge_write_cmd_2(%struct.axge_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @axge_write_cmd_1(%struct.axge_softc*, i32, i32, i32) #1

declare dso_local i32 @AXGE_UNLOCK(%struct.axge_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @uether_ifdetach(%struct.usb_ether*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
