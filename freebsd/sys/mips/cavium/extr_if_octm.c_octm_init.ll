; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.octm_softc = type { i32, %struct.ifnet* }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@CVMX_IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CVMX_IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @octm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octm_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.octm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.octm_softc*
  store %struct.octm_softc* %8, %struct.octm_softc** %4, align 8
  %9 = load %struct.octm_softc*, %struct.octm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.octm_softc*, %struct.octm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cvmx_mgmt_port_disable(i32 %21)
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %18, %1
  store i64 0, i64* %6, align 8
  %30 = bitcast i64* %6 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = call i32 @IF_LLADDR(%struct.ifnet* %32)
  %34 = call i32 @memcpy(i32* %31, i32 %33, i32 6)
  %35 = load %struct.octm_softc*, %struct.octm_softc** %4, align 8
  %36 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @cvmx_mgmt_port_set_mac(i32 %37, i64 %38)
  store i32 0, i32* %5, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = load i32, i32* @CVMX_IFF_ALLMULTI, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %29
  %51 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_PROMISC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @CVMX_IFF_PROMISC, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.octm_softc*, %struct.octm_softc** %4, align 8
  %63 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @cvmx_mgmt_port_set_multicast_list(i32 %64, i32 %65)
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFF_UP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.octm_softc*, %struct.octm_softc** %4, align 8
  %75 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @cvmx_mgmt_port_enable(i32 %76)
  br label %78

78:                                               ; preds = %73, %61
  %79 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %80 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  ret void
}

declare dso_local i32 @cvmx_mgmt_port_disable(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @cvmx_mgmt_port_set_mac(i32, i64) #1

declare dso_local i32 @cvmx_mgmt_port_set_multicast_list(i32, i32) #1

declare dso_local i32 @cvmx_mgmt_port_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
