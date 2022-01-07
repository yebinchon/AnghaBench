; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i64, i32, %struct.octm_softc* }
%struct.octm_softc = type { i32, i32, i32 }
%struct.ifreq = type { i64, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @octm_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octm_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.octm_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 4
  %13 = load %struct.octm_softc*, %struct.octm_softc** %12, align 8
  store %struct.octm_softc* %13, %struct.octm_softc** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %9, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %101 [
    i32 132, label %17
    i32 130, label %27
    i32 131, label %71
    i32 128, label %77
    i32 129, label %89
    i32 133, label %89
  ]

17:                                               ; preds = %3
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @ether_ioctl(%struct.ifnet* %18, i32 %19, i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %111

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %111

27:                                               ; preds = %3
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.octm_softc*, %struct.octm_softc** %8, align 8
  %32 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %111

36:                                               ; preds = %27
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IFF_UP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.octm_softc*, %struct.octm_softc** %8, align 8
  %45 = call i32 @octm_init(%struct.octm_softc* %44)
  br label %65

46:                                               ; preds = %36
  %47 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.octm_softc*, %struct.octm_softc** %8, align 8
  %55 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cvmx_mgmt_port_disable(i32 %56)
  %58 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %53, %46
  br label %65

65:                                               ; preds = %64, %43
  %66 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.octm_softc*, %struct.octm_softc** %8, align 8
  %70 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %111

71:                                               ; preds = %3
  %72 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %73 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %4, align 4
  br label %111

77:                                               ; preds = %3
  %78 = load %struct.octm_softc*, %struct.octm_softc** %8, align 8
  %79 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %82 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = call i32 @cvmx_mgmt_port_set_max_packet_size(i32 %80, i64 %87)
  store i32 0, i32* %4, align 4
  br label %111

89:                                               ; preds = %3, %3
  %90 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %91 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %92 = load %struct.octm_softc*, %struct.octm_softc** %8, align 8
  %93 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @ifmedia_ioctl(%struct.ifnet* %90, %struct.ifreq* %91, i32* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %111

100:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %111

101:                                              ; preds = %3
  %102 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @ether_ioctl(%struct.ifnet* %102, i32 %103, i64 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %111

110:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %108, %100, %98, %77, %71, %65, %35, %26, %24
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @octm_init(%struct.octm_softc*) #1

declare dso_local i32 @cvmx_mgmt_port_disable(i32) #1

declare dso_local i32 @cvmx_mgmt_port_set_max_packet_size(i32, i64) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
