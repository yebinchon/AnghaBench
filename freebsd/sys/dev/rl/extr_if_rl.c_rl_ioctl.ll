; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.rl_softc* }
%struct.rl_softc = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@RL_IMR = common dso_local global i32 0, align 4
@RL_INTRS = common dso_local global i32 0, align 4
@rl_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @rl_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.rl_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.ifreq*
  store %struct.ifreq* %13, %struct.ifreq** %7, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 4
  %16 = load %struct.rl_softc*, %struct.rl_softc** %15, align 8
  store %struct.rl_softc* %16, %struct.rl_softc** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %145 [
    i32 129, label %18
    i32 133, label %73
    i32 132, label %73
    i32 131, label %80
    i32 128, label %80
    i32 130, label %91
  ]

18:                                               ; preds = %3
  %19 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %20 = call i32 @RL_LOCK(%struct.rl_softc* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %18
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %39 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %37, %40
  %42 = load i32, i32* @IFF_PROMISC, align 4
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %49 = call i32 @rl_rxfilter(%struct.rl_softc* %48)
  br label %53

50:                                               ; preds = %34, %27
  %51 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %52 = call i32 @rl_init_locked(%struct.rl_softc* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %65

54:                                               ; preds = %18
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %63 = call i32 @rl_stop(%struct.rl_softc* %62)
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %70 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %72 = call i32 @RL_UNLOCK(%struct.rl_softc* %71)
  br label %150

73:                                               ; preds = %3, %3
  %74 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %75 = call i32 @RL_LOCK(%struct.rl_softc* %74)
  %76 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %77 = call i32 @rl_rxfilter(%struct.rl_softc* %76)
  %78 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %79 = call i32 @RL_UNLOCK(%struct.rl_softc* %78)
  br label %150

80:                                               ; preds = %3, %3
  %81 = load %struct.rl_softc*, %struct.rl_softc** %9, align 8
  %82 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.mii_data* @device_get_softc(i32 %83)
  store %struct.mii_data* %84, %struct.mii_data** %8, align 8
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %87 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %88 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %87, i32 0, i32 0
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @ifmedia_ioctl(%struct.ifnet* %85, %struct.ifreq* %86, i32* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  br label %150

91:                                               ; preds = %3
  %92 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %93 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = xor i32 %94, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @IFCAP_WOL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %144

103:                                              ; preds = %91
  %104 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %105 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IFCAP_WOL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %103
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %117 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = xor i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %110
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %128 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %129 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = xor i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %121
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %139 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = xor i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %132
  br label %144

144:                                              ; preds = %143, %103, %91
  br label %150

145:                                              ; preds = %3
  %146 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i64, i64* %6, align 8
  %149 = call i32 @ether_ioctl(%struct.ifnet* %146, i32 %147, i64 %148)
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %145, %144, %80, %73, %65
  %151 = load i32, i32* %10, align 4
  ret i32 %151
}

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @rl_rxfilter(%struct.rl_softc*) #1

declare dso_local i32 @rl_init_locked(%struct.rl_softc*) #1

declare dso_local i32 @rl_stop(%struct.rl_softc*) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
