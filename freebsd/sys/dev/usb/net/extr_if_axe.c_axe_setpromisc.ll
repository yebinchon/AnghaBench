; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_setpromisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_setpromisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.axe_softc = type { i32 }
%struct.ifnet = type { i32 }

@AXE_CMD_RXCTL_READ = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@AXE_RXCMD_PROMISC = common dso_local global i32 0, align 4
@AXE_CMD_RXCTL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @axe_setpromisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_setpromisc(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.axe_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.axe_softc* %7, %struct.axe_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %11 = load i32, i32* @AXE_CMD_RXCTL_READ, align 4
  %12 = call i32 @axe_cmd(%struct.axe_softc* %10, i32 %11, i32 0, i32 0, i32* %5)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @le16toh(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @AXE_RXCMD_PROMISC, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @AXE_RXCMD_PROMISC, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %32 = load i32, i32* @AXE_CMD_RXCTL_WRITE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @axe_cmd(%struct.axe_softc* %31, i32 %32, i32 0, i32 %33, i32* null)
  %35 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %36 = call i32 @axe_setmulti(%struct.usb_ether* %35)
  ret void
}

declare dso_local %struct.axe_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @axe_setmulti(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
