; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.vtbe_softc* }
%struct.vtbe_softc = type { i32 }
%struct.ifmediareq = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @vtbe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtbe_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifmediareq*, align 8
  %8 = alloca %struct.vtbe_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 3
  %14 = load %struct.vtbe_softc*, %struct.vtbe_softc** %13, align 8
  store %struct.vtbe_softc* %14, %struct.vtbe_softc** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %106 [
    i32 129, label %18
    i32 134, label %61
    i32 133, label %61
    i32 128, label %62
    i32 132, label %62
    i32 130, label %84
    i32 131, label %103
  ]

18:                                               ; preds = %3
  %19 = load %struct.vtbe_softc*, %struct.vtbe_softc** %8, align 8
  %20 = call i32 @VTBE_LOCK(%struct.vtbe_softc* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load %struct.vtbe_softc*, %struct.vtbe_softc** %8, align 8
  %29 = call i32 @pio_enable_irq(%struct.vtbe_softc* %28, i32 1)
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.vtbe_softc*, %struct.vtbe_softc** %8, align 8
  %38 = call i32 @vtbe_init_locked(%struct.vtbe_softc* %37)
  br label %39

39:                                               ; preds = %36, %27
  br label %53

40:                                               ; preds = %18
  %41 = load %struct.vtbe_softc*, %struct.vtbe_softc** %8, align 8
  %42 = call i32 @pio_enable_irq(%struct.vtbe_softc* %41, i32 0)
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.vtbe_softc*, %struct.vtbe_softc** %8, align 8
  %51 = call i32 @vtbe_stop_locked(%struct.vtbe_softc* %50)
  br label %52

52:                                               ; preds = %49, %40
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vtbe_softc*, %struct.vtbe_softc** %8, align 8
  %58 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.vtbe_softc*, %struct.vtbe_softc** %8, align 8
  %60 = call i32 @VTBE_UNLOCK(%struct.vtbe_softc* %59)
  br label %111

61:                                               ; preds = %3, %3
  br label %111

62:                                               ; preds = %3, %3
  %63 = load i64, i64* %6, align 8
  %64 = inttoptr i64 %63 to %struct.ifmediareq*
  store %struct.ifmediareq* %64, %struct.ifmediareq** %7, align 8
  %65 = load %struct.ifmediareq*, %struct.ifmediareq** %7, align 8
  %66 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* @IFM_AVALID, align 4
  %68 = load i32, i32* @IFM_ACTIVE, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ifmediareq*, %struct.ifmediareq** %7, align 8
  %71 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @IFM_ETHER, align 4
  %73 = load i32, i32* @IFM_10G_T, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @IFM_FDX, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.ifmediareq*, %struct.ifmediareq** %7, align 8
  %78 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ifmediareq*, %struct.ifmediareq** %7, align 8
  %80 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ifmediareq*, %struct.ifmediareq** %7, align 8
  %83 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  br label %111

84:                                               ; preds = %3
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %89 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %87, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = xor i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %84
  br label %111

103:                                              ; preds = %3
  %104 = load %struct.vtbe_softc*, %struct.vtbe_softc** %8, align 8
  %105 = call i32 @pio_enable_irq(%struct.vtbe_softc* %104, i32 1)
  br label %106

106:                                              ; preds = %3, %103
  %107 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @ether_ioctl(%struct.ifnet* %107, i32 %108, i64 %109)
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %106, %102, %62, %61, %53
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local i32 @VTBE_LOCK(%struct.vtbe_softc*) #1

declare dso_local i32 @pio_enable_irq(%struct.vtbe_softc*, i32) #1

declare dso_local i32 @vtbe_init_locked(%struct.vtbe_softc*) #1

declare dso_local i32 @vtbe_stop_locked(%struct.vtbe_softc*) #1

declare dso_local i32 @VTBE_UNLOCK(%struct.vtbe_softc*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
