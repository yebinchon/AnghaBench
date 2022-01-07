; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_setpromisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_setpromisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.muge_softc = type { i32 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"promiscuous mode %sabled\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@ETH_RFE_CTL_MCAST_EN_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL_UCAST_EN_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @muge_setpromisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @muge_setpromisc(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.muge_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.muge_softc* %6, %struct.muge_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @muge_dbg_printf(%struct.muge_softc* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @MUGE_LOCK_ASSERT(%struct.muge_softc* %19, i32 %20)
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_PROMISC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @ETH_RFE_CTL_MCAST_EN_, align 4
  %30 = load i32, i32* @ETH_RFE_CTL_UCAST_EN_, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %33 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %43

36:                                               ; preds = %1
  %37 = load i32, i32* @ETH_RFE_CTL_MCAST_EN_, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %40 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %28
  %44 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %45 = load i32, i32* @ETH_RFE_CTL, align 4
  %46 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %47 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lan78xx_write_reg(%struct.muge_softc* %44, i32 %45, i32 %48)
  ret void
}

declare dso_local %struct.muge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @muge_dbg_printf(%struct.muge_softc*, i8*, i8*) #1

declare dso_local i32 @MUGE_LOCK_ASSERT(%struct.muge_softc*, i32) #1

declare dso_local i32 @lan78xx_write_reg(%struct.muge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
