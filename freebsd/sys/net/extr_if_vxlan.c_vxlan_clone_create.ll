; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }
%struct.vxlan_softc = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, %struct.vxlan_softc* }
%struct.ifvxlanparam = type { i32 }

@M_VXLAN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vxlanrm\00", align 1
@vxlan_name = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@vxlan_init = common dso_local global i32 0, align 4
@vxlan_ioctl = common dso_local global i32 0, align 4
@vxlan_transmit = common dso_local global i32 0, align 4
@vxlan_qflush = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@vxlan_media_change = common dso_local global i32 0, align 4
@vxlan_media_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i64)* @vxlan_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_clone_create(%struct.if_clone* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vxlan_softc*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.ifvxlanparam, align 4
  %11 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @M_VXLAN, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.vxlan_softc* @malloc(i32 32, i32 %12, i32 %15)
  store %struct.vxlan_softc* %16, %struct.vxlan_softc** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %19 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %21 = call i32 @vxlan_set_default_config(%struct.vxlan_softc* %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @copyin(i64 %25, %struct.ifvxlanparam* %10, i32 4)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %134

30:                                               ; preds = %24
  %31 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %32 = call i32 @vxlan_set_user_config(%struct.vxlan_softc* %31, %struct.ifvxlanparam* %10)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %134

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32, i32* @IFT_ETHER, align 4
  %39 = call %struct.ifnet* @if_alloc(i32 %38)
  store %struct.ifnet* %39, %struct.ifnet** %9, align 8
  %40 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %41 = icmp eq %struct.ifnet* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOSPC, align 4
  store i32 %43, i32* %11, align 4
  br label %134

44:                                               ; preds = %37
  %45 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %46 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %47 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %46, i32 0, i32 6
  store %struct.ifnet* %45, %struct.ifnet** %47, align 8
  %48 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %49 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %48, i32 0, i32 4
  %50 = call i32 @rm_init(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %52 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %51, i32 0, i32 5
  %53 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %54 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %53, i32 0, i32 4
  %55 = call i32 @callout_init_rw(i32* %52, i32* %54, i32 0)
  %56 = call i32 (...) @arc4random()
  %57 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %58 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %60 = call i32 @vxlan_ftable_init(%struct.vxlan_softc* %59)
  %61 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %62 = call i32 @vxlan_sysctl_setup(%struct.vxlan_softc* %61)
  %63 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %64 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 9
  store %struct.vxlan_softc* %63, %struct.vxlan_softc** %65, align 8
  %66 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %67 = load i32, i32* @vxlan_name, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @if_initname(%struct.ifnet* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @IFF_BROADCAST, align 4
  %71 = load i32, i32* @IFF_SIMPLEX, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @IFF_MULTICAST, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @vxlan_init, align 4
  %78 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @vxlan_ioctl, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @vxlan_transmit, align 4
  %84 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @vxlan_qflush, align 4
  %87 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %90 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %97 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %104 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %103, i32 0, i32 2
  %105 = load i32, i32* @vxlan_media_change, align 4
  %106 = load i32, i32* @vxlan_media_status, align 4
  %107 = call i32 @ifmedia_init(i32* %104, i32 0, i32 %105, i32 %106)
  %108 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %109 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %108, i32 0, i32 2
  %110 = load i32, i32* @IFM_ETHER, align 4
  %111 = load i32, i32* @IFM_AUTO, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @ifmedia_add(i32* %109, i32 %112, i32 0, i32* null)
  %114 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %115 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %114, i32 0, i32 2
  %116 = load i32, i32* @IFM_ETHER, align 4
  %117 = load i32, i32* @IFM_AUTO, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @ifmedia_set(i32* %115, i32 %118)
  %120 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %121 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %122 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %121, i32 0, i32 1
  %123 = call i32 @ether_gen_addr(%struct.ifnet* %120, %struct.TYPE_2__* %122)
  %124 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %125 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %126 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ether_ifattach(%struct.ifnet* %124, i32 %128)
  %130 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %131 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  store i32 0, i32* %4, align 4
  br label %139

134:                                              ; preds = %42, %35, %29
  %135 = load %struct.vxlan_softc*, %struct.vxlan_softc** %8, align 8
  %136 = load i32, i32* @M_VXLAN, align 4
  %137 = call i32 @free(%struct.vxlan_softc* %135, i32 %136)
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %134, %44
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.vxlan_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @vxlan_set_default_config(%struct.vxlan_softc*) #1

declare dso_local i32 @copyin(i64, %struct.ifvxlanparam*, i32) #1

declare dso_local i32 @vxlan_set_user_config(%struct.vxlan_softc*, %struct.ifvxlanparam*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @rm_init(i32*, i8*) #1

declare dso_local i32 @callout_init_rw(i32*, i32*, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @vxlan_ftable_init(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_sysctl_setup(%struct.vxlan_softc*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @ether_gen_addr(%struct.ifnet*, %struct.TYPE_2__*) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @free(%struct.vxlan_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
