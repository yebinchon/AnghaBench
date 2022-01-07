; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.kue_softc = type { i32, i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@KUE_RXFILT_ALLMULTI = common dso_local global i32 0, align 4
@KUE_RXFILT_MULTICAST = common dso_local global i32 0, align 4
@KUE_CMD_SET_PKT_FILTER = common dso_local global i32 0, align 4
@kue_copy_maddr = common dso_local global i32 0, align 4
@KUE_CTL_WRITE = common dso_local global i32 0, align 4
@KUE_CMD_SET_MCAST_FILTERS = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @kue_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kue_setmulti(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.kue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.kue_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.kue_softc* %7, %struct.kue_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @KUE_LOCK_ASSERT(%struct.kue_softc* %10, i32 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_ALLMULTI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_PROMISC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %19, %1
  %27 = load i32, i32* @KUE_RXFILT_ALLMULTI, align 4
  %28 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %29 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @KUE_RXFILT_MULTICAST, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %35 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %39 = load i32, i32* @KUE_CMD_SET_PKT_FILTER, align 4
  %40 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %41 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kue_setword(%struct.kue_softc* %38, i32 %39, i32 %42)
  br label %89

44:                                               ; preds = %19
  %45 = load i32, i32* @KUE_RXFILT_ALLMULTI, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %48 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = load i32, i32* @kue_copy_maddr, align 4
  %53 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %54 = call i32 @if_foreach_llmaddr(%struct.ifnet* %51, i32 %52, %struct.kue_softc* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %57 = call i32 @KUE_MCFILTCNT(%struct.kue_softc* %56)
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %44
  %60 = load i32, i32* @KUE_RXFILT_ALLMULTI, align 4
  %61 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %62 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %82

65:                                               ; preds = %44
  %66 = load i32, i32* @KUE_RXFILT_MULTICAST, align 4
  %67 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %68 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %72 = load i32, i32* @KUE_CTL_WRITE, align 4
  %73 = load i32, i32* @KUE_CMD_SET_MCAST_FILTERS, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %76 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %80 = mul nsw i32 %78, %79
  %81 = call i32 @kue_ctl(%struct.kue_softc* %71, i32 %72, i32 %73, i32 %74, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %65, %59
  %83 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %84 = load i32, i32* @KUE_CMD_SET_PKT_FILTER, align 4
  %85 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %86 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @kue_setword(%struct.kue_softc* %83, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %82, %26
  ret void
}

declare dso_local %struct.kue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @KUE_LOCK_ASSERT(%struct.kue_softc*, i32) #1

declare dso_local i32 @kue_setword(%struct.kue_softc*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.kue_softc*) #1

declare dso_local i32 @KUE_MCFILTCNT(%struct.kue_softc*) #1

declare dso_local i32 @kue_ctl(%struct.kue_softc*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
