; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.nlm_xlpge_softc* }
%struct.nlm_xlpge_softc = type { i32, i32*, i32 }
%struct.mii_data = type { i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@NLM_LINK_UP = common dso_local global i32 0, align 4
@NLM_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @nlm_xlpge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_xlpge_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.mii_data*, align 8
  %8 = alloca %struct.nlm_xlpge_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 2
  %13 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %12, align 8
  store %struct.nlm_xlpge_softc* %13, %struct.nlm_xlpge_softc** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %9, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %84 [
    i32 129, label %17
    i32 130, label %67
    i32 128, label %67
  ]

17:                                               ; preds = %3
  %18 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %19 = call i32 @XLPGE_LOCK(%struct.nlm_xlpge_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %24 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IFF_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %17
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %40 = call i32 @nlm_xlpge_init(%struct.nlm_xlpge_softc* %39)
  br label %44

41:                                               ; preds = %31
  %42 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %43 = call i32 @nlm_xlpge_port_enable(%struct.nlm_xlpge_softc* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %46 = call i32 @nlm_xlpge_mac_set_rx_mode(%struct.nlm_xlpge_softc* %45)
  %47 = load i32, i32* @NLM_LINK_UP, align 4
  %48 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %49 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %64

50:                                               ; preds = %17
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %59 = call i32 @nlm_xlpge_port_disable(%struct.nlm_xlpge_softc* %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* @NLM_LINK_DOWN, align 4
  %62 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %63 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %44
  %65 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %66 = call i32 @XLPGE_UNLOCK(%struct.nlm_xlpge_softc* %65)
  store i32 0, i32* %10, align 4
  br label %89

67:                                               ; preds = %3, %3
  %68 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %69 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %8, align 8
  %74 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call %struct.mii_data* @device_get_softc(i32* %75)
  store %struct.mii_data* %76, %struct.mii_data** %7, align 8
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %79 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  %80 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %79, i32 0, i32 0
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @ifmedia_ioctl(%struct.ifnet* %77, %struct.ifreq* %78, i32* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %72, %67
  br label %89

84:                                               ; preds = %3
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @ether_ioctl(%struct.ifnet* %85, i32 %86, i64 %87)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %84, %83, %64
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i32 @XLPGE_LOCK(%struct.nlm_xlpge_softc*) #1

declare dso_local i32 @nlm_xlpge_init(%struct.nlm_xlpge_softc*) #1

declare dso_local i32 @nlm_xlpge_port_enable(%struct.nlm_xlpge_softc*) #1

declare dso_local i32 @nlm_xlpge_mac_set_rx_mode(%struct.nlm_xlpge_softc*) #1

declare dso_local i32 @nlm_xlpge_port_disable(%struct.nlm_xlpge_softc*) #1

declare dso_local i32 @XLPGE_UNLOCK(%struct.nlm_xlpge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
