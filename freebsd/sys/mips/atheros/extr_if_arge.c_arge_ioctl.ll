; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.arge_softc* }
%struct.arge_softc = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@AR71XX_DMA_INTR = common dso_local global i32 0, align 4
@DMA_INTR_ALL = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@arge_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @arge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arge_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.arge_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 3
  %13 = load %struct.arge_softc*, %struct.arge_softc** %12, align 8
  store %struct.arge_softc* %13, %struct.arge_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %109 [
    i32 129, label %17
    i32 133, label %83
    i32 132, label %83
    i32 131, label %84
    i32 128, label %84
    i32 130, label %108
  ]

17:                                               ; preds = %3
  %18 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %19 = call i32 @ARGE_LOCK(%struct.arge_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %38 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %36, %39
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %33
  br label %57

48:                                               ; preds = %26
  %49 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %50 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %55 = call i32 @arge_init_locked(%struct.arge_softc* %54)
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %47
  br label %75

58:                                               ; preds = %17
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %73 = call i32 @arge_stop(%struct.arge_softc* %72)
  br label %74

74:                                               ; preds = %65, %58
  br label %75

75:                                               ; preds = %74, %57
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %80 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %82 = call i32 @ARGE_UNLOCK(%struct.arge_softc* %81)
  store i32 0, i32* %10, align 4
  br label %114

83:                                               ; preds = %3, %3
  store i32 0, i32* %10, align 4
  br label %114

84:                                               ; preds = %3, %3
  %85 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %86 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %91 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.mii_data* @device_get_softc(i32 %92)
  store %struct.mii_data* %93, %struct.mii_data** %9, align 8
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %96 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %97 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %96, i32 0, i32 0
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ifmedia_ioctl(%struct.ifnet* %94, %struct.ifreq* %95, i32* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %107

100:                                              ; preds = %84
  %101 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %102 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %103 = load %struct.arge_softc*, %struct.arge_softc** %7, align 8
  %104 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @ifmedia_ioctl(%struct.ifnet* %101, %struct.ifreq* %102, i32* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %100, %89
  br label %114

108:                                              ; preds = %3
  br label %109

109:                                              ; preds = %3, %108
  %110 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @ether_ioctl(%struct.ifnet* %110, i32 %111, i64 %112)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %109, %107, %83, %75
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

declare dso_local i32 @ARGE_LOCK(%struct.arge_softc*) #1

declare dso_local i32 @arge_init_locked(%struct.arge_softc*) #1

declare dso_local i32 @arge_stop(%struct.arge_softc*) #1

declare dso_local i32 @ARGE_UNLOCK(%struct.arge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
