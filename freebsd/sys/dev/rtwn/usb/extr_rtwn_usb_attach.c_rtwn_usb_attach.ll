; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.rtwn_usb_softc = type { i32, %struct.rtwn_softc }
%struct.rtwn_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtwn_usb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_usb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.rtwn_usb_softc*, align 8
  %6 = alloca %struct.rtwn_softc*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.rtwn_usb_softc* @device_get_softc(i32 %11)
  store %struct.rtwn_usb_softc* %12, %struct.rtwn_usb_softc** %5, align 8
  %13 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %14 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %13, i32 0, i32 1
  store %struct.rtwn_softc* %14, %struct.rtwn_softc** %6, align 8
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %16 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %15, i32 0, i32 2
  store %struct.ieee80211com* %16, %struct.ieee80211com** %7, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_set_usb_desc(i32 %17)
  %19 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %20 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %23 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %26 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_nameunit(i32 %27)
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %32 = call i32 @rtwn_sysctlattach(%struct.rtwn_softc* %31)
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %34 = call i32 @rtwn_usb_sysctlattach(%struct.rtwn_softc* %33)
  %35 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %36 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %35, i32 0, i32 0
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* %36, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %44 = call i32 @rtwn_usb_attach_methods(%struct.rtwn_softc* %43)
  %45 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %46 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %47 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %46)
  %48 = call i32 @rtwn_usb_attach_private(%struct.rtwn_usb_softc* %45, i32 %47)
  %49 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %50 = call i32 @rtwn_usb_setup_endpoints(%struct.rtwn_usb_softc* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %1
  br label %73

54:                                               ; preds = %1
  %55 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %56 = call i32 @rtwn_usb_alloc_rx_list(%struct.rtwn_softc* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %73

60:                                               ; preds = %54
  %61 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %62 = call i32 @rtwn_usb_alloc_tx_list(%struct.rtwn_softc* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %73

66:                                               ; preds = %60
  %67 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %68 = call i32 @rtwn_attach(%struct.rtwn_softc* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %73

72:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %77

73:                                               ; preds = %71, %65, %59, %53
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @rtwn_usb_detach(i32 %74)
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %72
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.rtwn_usb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @rtwn_sysctlattach(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_usb_sysctlattach(%struct.rtwn_softc*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @rtwn_usb_attach_methods(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_usb_attach_private(%struct.rtwn_usb_softc*, i32) #1

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @rtwn_usb_setup_endpoints(%struct.rtwn_usb_softc*) #1

declare dso_local i32 @rtwn_usb_alloc_rx_list(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_usb_alloc_tx_list(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_attach(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_usb_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
