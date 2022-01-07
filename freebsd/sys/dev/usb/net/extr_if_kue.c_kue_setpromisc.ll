; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_setpromisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_setpromisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.kue_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@KUE_RXFILT_PROMISC = common dso_local global i32 0, align 4
@KUE_CMD_SET_PKT_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @kue_setpromisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kue_setpromisc(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.kue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.kue_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.kue_softc* %6, %struct.kue_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @KUE_LOCK_ASSERT(%struct.kue_softc* %9, i32 %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @KUE_RXFILT_PROMISC, align 4
  %20 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %21 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load i32, i32* @KUE_RXFILT_PROMISC, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %28 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %33 = load i32, i32* @KUE_CMD_SET_PKT_FILTER, align 4
  %34 = load %struct.kue_softc*, %struct.kue_softc** %3, align 8
  %35 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kue_setword(%struct.kue_softc* %32, i32 %33, i32 %36)
  ret void
}

declare dso_local %struct.kue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @KUE_LOCK_ASSERT(%struct.kue_softc*, i32) #1

declare dso_local i32 @kue_setword(%struct.kue_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
