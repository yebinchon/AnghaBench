; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_setpromisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_setpromisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { %struct.udav_softc* }
%struct.udav_softc = type { i32 }
%struct.ifnet = type { i32 }

@UDAV_RCR = common dso_local global i32 0, align 4
@UDAV_RCR_ALL = common dso_local global i32 0, align 4
@UDAV_RCR_PRMSC = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @udav_setpromisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udav_setpromisc(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.udav_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %6, i32 0, i32 0
  %8 = load %struct.udav_softc*, %struct.udav_softc** %7, align 8
  store %struct.udav_softc* %8, %struct.udav_softc** %3, align 8
  %9 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %10 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %9, i32 0, i32 0
  %11 = call %struct.ifnet* @uether_getifp(i32* %10)
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %13 = load i32, i32* @UDAV_RCR, align 4
  %14 = call i32 @udav_csr_read1(%struct.udav_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UDAV_RCR_ALL, align 4
  %16 = load i32, i32* @UDAV_RCR_PRMSC, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_PROMISC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @UDAV_RCR_ALL, align 4
  %29 = load i32, i32* @UDAV_RCR_PRMSC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %1
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @UDAV_RCR_ALL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %33
  br label %45

45:                                               ; preds = %44, %27
  %46 = load %struct.udav_softc*, %struct.udav_softc** %3, align 8
  %47 = load i32, i32* @UDAV_RCR, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @udav_csr_write1(%struct.udav_softc* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @udav_csr_read1(%struct.udav_softc*, i32) #1

declare dso_local i32 @udav_csr_write1(%struct.udav_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
