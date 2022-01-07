; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.xae_softc* }
%struct.xae_softc = type { i32, %struct.mii_data*, i32 }
%struct.mii_data = type { i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @xae_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xae_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.xae_softc*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 3
  %14 = load %struct.xae_softc*, %struct.xae_softc** %13, align 8
  store %struct.xae_softc* %14, %struct.xae_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %124 [
    i32 129, label %18
    i32 133, label %80
    i32 132, label %80
    i32 128, label %95
    i32 131, label %95
    i32 130, label %105
  ]

18:                                               ; preds = %3
  %19 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %20 = call i32 @XAE_LOCK(%struct.xae_softc* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %18
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %39 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = xor i32 %37, %40
  %42 = load i32, i32* @IFF_PROMISC, align 4
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %49 = call i32 @xae_setup_rxfilter(%struct.xae_softc* %48)
  br label %50

50:                                               ; preds = %47, %34
  br label %60

51:                                               ; preds = %27
  %52 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %53 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %58 = call i32 @xae_init_locked(%struct.xae_softc* %57)
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %50
  br label %72

61:                                               ; preds = %18
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %70 = call i32 @xae_stop_locked(%struct.xae_softc* %69)
  br label %71

71:                                               ; preds = %68, %61
  br label %72

72:                                               ; preds = %71, %60
  %73 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %77 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %79 = call i32 @XAE_UNLOCK(%struct.xae_softc* %78)
  br label %129

80:                                               ; preds = %3, %3
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %89 = call i32 @XAE_LOCK(%struct.xae_softc* %88)
  %90 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %91 = call i32 @xae_setup_rxfilter(%struct.xae_softc* %90)
  %92 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %93 = call i32 @XAE_UNLOCK(%struct.xae_softc* %92)
  br label %94

94:                                               ; preds = %87, %80
  br label %129

95:                                               ; preds = %3, %3
  %96 = load %struct.xae_softc*, %struct.xae_softc** %7, align 8
  %97 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %96, i32 0, i32 1
  %98 = load %struct.mii_data*, %struct.mii_data** %97, align 8
  store %struct.mii_data* %98, %struct.mii_data** %8, align 8
  %99 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %100 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %101 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %102 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %101, i32 0, i32 0
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @ifmedia_ioctl(%struct.ifnet* %99, %struct.ifreq* %100, i32* %102, i32 %103)
  store i32 %104, i32* %11, align 4
  br label %129

105:                                              ; preds = %3
  %106 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %110 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %108, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %105
  %118 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %119 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %120 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = xor i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %105
  br label %129

124:                                              ; preds = %3
  %125 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @ether_ioctl(%struct.ifnet* %125, i32 %126, i64 %127)
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %124, %123, %95, %94, %72
  %130 = load i32, i32* %11, align 4
  ret i32 %130
}

declare dso_local i32 @XAE_LOCK(%struct.xae_softc*) #1

declare dso_local i32 @xae_setup_rxfilter(%struct.xae_softc*) #1

declare dso_local i32 @xae_init_locked(%struct.xae_softc*) #1

declare dso_local i32 @xae_stop_locked(%struct.xae_softc*) #1

declare dso_local i32 @XAE_UNLOCK(%struct.xae_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
