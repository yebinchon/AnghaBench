; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.bfe_softc* }
%struct.bfe_softc = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@BFE_FLAG_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @bfe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfe_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 2
  %13 = load %struct.bfe_softc*, %struct.bfe_softc** %12, align 8
  store %struct.bfe_softc* %13, %struct.bfe_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %88 [
    i32 129, label %17
    i32 132, label %62
    i32 131, label %62
    i32 130, label %77
    i32 128, label %77
  ]

17:                                               ; preds = %3
  %18 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %19 = call i32 @BFE_LOCK(%struct.bfe_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %35 = call i32 @bfe_set_rx_mode(%struct.bfe_softc* %34)
  br label %47

36:                                               ; preds = %26
  %37 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %38 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BFE_FLAG_DETACH, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %45 = call i32 @bfe_init_locked(%struct.bfe_softc* %44)
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %33
  br label %59

48:                                               ; preds = %17
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %57 = call i32 @bfe_stop(%struct.bfe_softc* %56)
  br label %58

58:                                               ; preds = %55, %48
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %61 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %60)
  br label %93

62:                                               ; preds = %3, %3
  %63 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %64 = call i32 @BFE_LOCK(%struct.bfe_softc* %63)
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %73 = call i32 @bfe_set_rx_mode(%struct.bfe_softc* %72)
  br label %74

74:                                               ; preds = %71, %62
  %75 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %76 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %75)
  br label %93

77:                                               ; preds = %3, %3
  %78 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  %79 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.mii_data* @device_get_softc(i32 %80)
  store %struct.mii_data* %81, %struct.mii_data** %9, align 8
  %82 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %83 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %84 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %85 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %84, i32 0, i32 0
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @ifmedia_ioctl(%struct.ifnet* %82, %struct.ifreq* %83, i32* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  br label %93

88:                                               ; preds = %3
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @ether_ioctl(%struct.ifnet* %89, i32 %90, i64 %91)
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %88, %77, %74, %59
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local i32 @BFE_LOCK(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_set_rx_mode(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_init_locked(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_stop(%struct.bfe_softc*) #1

declare dso_local i32 @BFE_UNLOCK(%struct.bfe_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
