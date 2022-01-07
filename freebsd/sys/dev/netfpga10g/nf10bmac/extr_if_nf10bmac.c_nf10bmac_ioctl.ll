; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.nf10bmac_softc* }
%struct.nf10bmac_softc = type { i32, i32, i32* }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@nf10bmac_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @nf10bmac_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf10bmac_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nf10bmac_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 4
  %13 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %12, align 8
  store %struct.nf10bmac_softc* %13, %struct.nf10bmac_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %89 [
    i32 129, label %17
    i32 130, label %70
    i32 131, label %82
    i32 128, label %82
  ]

17:                                               ; preds = %3
  %18 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %7, align 8
  %19 = call i32 @NF10BMAC_LOCK(%struct.nf10bmac_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %7, align 8
  %38 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = xor i32 %36, %39
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %50

47:                                               ; preds = %33, %26
  %48 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %7, align 8
  %49 = call i32 @nf10bmac_init_locked(%struct.nf10bmac_softc* %48)
  br label %50

50:                                               ; preds = %47, %46
  br label %62

51:                                               ; preds = %17
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %7, align 8
  %60 = call i32 @nf10bmac_stop_locked(%struct.nf10bmac_softc* %59)
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %61, %50
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %7, align 8
  %67 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %7, align 8
  %69 = call i32 @NF10BMAC_UNLOCK(%struct.nf10bmac_softc* %68)
  br label %94

70:                                               ; preds = %3
  %71 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %7, align 8
  %72 = call i32 @NF10BMAC_LOCK(%struct.nf10bmac_softc* %71)
  %73 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %74 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = xor i32 %75, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %7, align 8
  %81 = call i32 @NF10BMAC_UNLOCK(%struct.nf10bmac_softc* %80)
  br label %94

82:                                               ; preds = %3, %3
  %83 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %84 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %85 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %7, align 8
  %86 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ifmedia_ioctl(%struct.ifnet* %83, %struct.ifreq* %84, i32* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  br label %94

89:                                               ; preds = %3
  %90 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @ether_ioctl(%struct.ifnet* %90, i32 %91, i64 %92)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %89, %82, %70, %62
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @NF10BMAC_LOCK(%struct.nf10bmac_softc*) #1

declare dso_local i32 @nf10bmac_init_locked(%struct.nf10bmac_softc*) #1

declare dso_local i32 @nf10bmac_stop_locked(%struct.nf10bmac_softc*) #1

declare dso_local i32 @NF10BMAC_UNLOCK(%struct.nf10bmac_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
