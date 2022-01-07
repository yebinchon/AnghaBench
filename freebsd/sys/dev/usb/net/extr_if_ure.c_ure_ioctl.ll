; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.usb_ether* }
%struct.usb_ether = type { i32 }
%struct.ure_softc = type { i32 }
%struct.ifreq = type { i32 }

@SIOCSIFCAP = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i64, i64)* @ure_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ure_ioctl(%struct.ifnet* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_ether*, align 8
  %8 = alloca %struct.ure_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 2
  %15 = load %struct.usb_ether*, %struct.usb_ether** %14, align 8
  store %struct.usb_ether* %15, %struct.usb_ether** %7, align 8
  %16 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %17 = call %struct.ure_softc* @uether_getsc(%struct.usb_ether* %16)
  store %struct.ure_softc* %17, %struct.ure_softc** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to %struct.ifreq*
  store %struct.ifreq* %19, %struct.ifreq** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @SIOCSIFCAP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %3
  %24 = load %struct.ure_softc*, %struct.ure_softc** %8, align 8
  %25 = call i32 @URE_LOCK(%struct.ure_softc* %24)
  %26 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %28, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %23
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %50

49:                                               ; preds = %35, %23
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %42
  %51 = load %struct.ure_softc*, %struct.ure_softc** %8, align 8
  %52 = call i32 @URE_UNLOCK(%struct.ure_softc* %51)
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %57 = call i32 @uether_init(%struct.usb_ether* %56)
  br label %58

58:                                               ; preds = %55, %50
  br label %64

59:                                               ; preds = %3
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @uether_ioctl(%struct.ifnet* %60, i64 %61, i64 %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %58
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local %struct.ure_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @URE_LOCK(%struct.ure_softc*) #1

declare dso_local i32 @URE_UNLOCK(%struct.ure_softc*) #1

declare dso_local i32 @uether_init(%struct.usb_ether*) #1

declare dso_local i32 @uether_ioctl(%struct.ifnet*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
