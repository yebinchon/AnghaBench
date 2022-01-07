; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.dc_softc* }
%struct.dc_softc = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@DC_IMR = common dso_local global i32 0, align 4
@DC_INTRS = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@dc_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @dc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dc_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 3
  %14 = load %struct.dc_softc*, %struct.dc_softc** %13, align 8
  store %struct.dc_softc* %14, %struct.dc_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %108 [
    i32 129, label %18
    i32 133, label %81
    i32 132, label %81
    i32 131, label %96
    i32 128, label %96
    i32 130, label %107
  ]

18:                                               ; preds = %3
  %19 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %20 = call i32 @DC_LOCK(%struct.dc_softc* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %18
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %32 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %30, %33
  %35 = load i32, i32* @IFF_PROMISC, align 4
  %36 = load i32, i32* @IFF_ALLMULTI, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %50 = call i32 @dc_setfilt(%struct.dc_softc* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %61

52:                                               ; preds = %27
  %53 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %60 = call i32 @dc_init_locked(%struct.dc_softc* %59)
  br label %61

61:                                               ; preds = %52, %51
  br label %73

62:                                               ; preds = %18
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %71 = call i32 @dc_stop(%struct.dc_softc* %70)
  br label %72

72:                                               ; preds = %69, %62
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %78 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %80 = call i32 @DC_UNLOCK(%struct.dc_softc* %79)
  br label %113

81:                                               ; preds = %3, %3
  %82 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %83 = call i32 @DC_LOCK(%struct.dc_softc* %82)
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %92 = call i32 @dc_setfilt(%struct.dc_softc* %91)
  br label %93

93:                                               ; preds = %90, %81
  %94 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %95 = call i32 @DC_UNLOCK(%struct.dc_softc* %94)
  br label %113

96:                                               ; preds = %3, %3
  %97 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  %98 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.mii_data* @device_get_softc(i32 %99)
  store %struct.mii_data* %100, %struct.mii_data** %9, align 8
  %101 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %102 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %103 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %104 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %103, i32 0, i32 0
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @ifmedia_ioctl(%struct.ifnet* %101, %struct.ifreq* %102, i32* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  br label %113

107:                                              ; preds = %3
  br label %113

108:                                              ; preds = %3
  %109 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @ether_ioctl(%struct.ifnet* %109, i32 %110, i64 %111)
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %108, %107, %96, %93, %73
  %114 = load i32, i32* %10, align 4
  ret i32 %114
}

declare dso_local i32 @DC_LOCK(%struct.dc_softc*) #1

declare dso_local i32 @dc_setfilt(%struct.dc_softc*) #1

declare dso_local i32 @dc_init_locked(%struct.dc_softc*) #1

declare dso_local i32 @dc_stop(%struct.dc_softc*) #1

declare dso_local i32 @DC_UNLOCK(%struct.dc_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
