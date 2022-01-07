; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32 (%struct.usb_ether*)*, %struct.usb_ether* }
%struct.usb_ether = type { i32 }
%struct.smsc_softc = type { i32 }
%struct.ifreq = type { i32 }

@SIOCSIFCAP = common dso_local global i64 0, align 8
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i64, i64)* @smsc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc_ioctl(%struct.ifnet* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_ether*, align 8
  %8 = alloca %struct.smsc_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 4
  %15 = load %struct.usb_ether*, %struct.usb_ether** %14, align 8
  store %struct.usb_ether* %15, %struct.usb_ether** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @SIOCSIFCAP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %3
  %20 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %21 = call %struct.smsc_softc* @uether_getsc(%struct.usb_ether* %20)
  store %struct.smsc_softc* %21, %struct.smsc_softc** %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = inttoptr i64 %22 to %struct.ifreq*
  store %struct.ifreq* %23, %struct.ifreq** %9, align 8
  %24 = load %struct.smsc_softc*, %struct.smsc_softc** %8, align 8
  %25 = call i32 @SMSC_LOCK(%struct.smsc_softc* %24)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %28, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @IFCAP_RXCSUM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %19
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFCAP_RXCSUM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %37
  %45 = load i32, i32* @IFCAP_RXCSUM, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %44
  %57 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %56, %44
  br label %64

64:                                               ; preds = %63, %37, %19
  %65 = load %struct.smsc_softc*, %struct.smsc_softc** %8, align 8
  %66 = call i32 @SMSC_UNLOCK(%struct.smsc_softc* %65)
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 3
  %72 = load i32 (%struct.usb_ether*)*, i32 (%struct.usb_ether*)** %71, align 8
  %73 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %74 = call i32 %72(%struct.usb_ether* %73)
  br label %75

75:                                               ; preds = %69, %64
  br label %81

76:                                               ; preds = %3
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @uether_ioctl(%struct.ifnet* %77, i64 %78, i64 %79)
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %76, %75
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local %struct.smsc_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @SMSC_LOCK(%struct.smsc_softc*) #1

declare dso_local i32 @SMSC_UNLOCK(%struct.smsc_softc*) #1

declare dso_local i32 @uether_ioctl(%struct.ifnet*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
