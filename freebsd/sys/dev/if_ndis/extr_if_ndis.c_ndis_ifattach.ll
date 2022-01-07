; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_ifattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_ifattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.ndis_softc* }
%struct.TYPE_3__ = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OID_802_3_CURRENT_ADDRESS = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ndis_ifioctl = common dso_local global i32 0, align 4
@ndis_ifstart = common dso_local global i32 0, align 4
@ndis_init = common dso_local global i32 0, align 4
@IFM_IMASK = common dso_local global i32 0, align 4
@ndis_ifmedia_upd = common dso_local global i32 0, align 4
@ndis_ifmedia_sts = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndis_softc*)* @ndis_ifattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndis_ifattach(%struct.ndis_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ndis_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ndis_softc* %0, %struct.ndis_softc** %3, align 8
  %9 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @IFT_ETHER, align 4
  %14 = call %struct.ifnet* @if_alloc(i32 %13)
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = icmp eq %struct.ifnet* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOSPC, align 4
  store i32 %18, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %128

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %21, i32 0, i32 3
  store %struct.ifnet* %20, %struct.ifnet** %22, align 8
  %23 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 9
  store %struct.ndis_softc* %23, %struct.ndis_softc** %25, align 8
  %26 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %27 = call i32 @ndis_probe_offload(%struct.ndis_softc* %26)
  %28 = mul nuw i64 4, %10
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %31 = load i32, i32* @OID_802_3_CURRENT_ADDRESS, align 4
  %32 = call i32 @ndis_get_info(%struct.ndis_softc* %30, i32 %31, i32* %12, i32* %7)
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @device_get_name(i32 %36)
  %38 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_get_unit(i32 %40)
  %42 = call i32 @if_initname(%struct.ifnet* %33, i32 %37, i32 %41)
  %43 = load i32, i32* @IFF_BROADCAST, align 4
  %44 = load i32, i32* @IFF_SIMPLEX, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IFF_MULTICAST, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @ndis_ifioctl, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @ndis_ifstart, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @ndis_init, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 1
  store i32 10000000, i32* %60, align 4
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 5
  %63 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %62, i32 50)
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 25, i32* %66, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 5
  %69 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %68)
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %80, i32 0, i32 0
  %82 = load i32, i32* @IFM_IMASK, align 4
  %83 = load i32, i32* @ndis_ifmedia_upd, align 4
  %84 = load i32, i32* @ndis_ifmedia_sts, align 4
  %85 = call i32 @ifmedia_init(i32* %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %86, i32 0, i32 0
  %88 = load i32, i32* @IFM_ETHER, align 4
  %89 = load i32, i32* @IFM_10_T, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @ifmedia_add(i32* %87, i32 %90, i32 0, i32* null)
  %92 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %92, i32 0, i32 0
  %94 = load i32, i32* @IFM_ETHER, align 4
  %95 = load i32, i32* @IFM_10_T, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IFM_FDX, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @ifmedia_add(i32* %93, i32 %98, i32 0, i32* null)
  %100 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %101 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %100, i32 0, i32 0
  %102 = load i32, i32* @IFM_ETHER, align 4
  %103 = load i32, i32* @IFM_100_TX, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @ifmedia_add(i32* %101, i32 %104, i32 0, i32* null)
  %106 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %106, i32 0, i32 0
  %108 = load i32, i32* @IFM_ETHER, align 4
  %109 = load i32, i32* @IFM_100_TX, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @IFM_FDX, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @ifmedia_add(i32* %107, i32 %112, i32 0, i32* null)
  %114 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %114, i32 0, i32 0
  %116 = load i32, i32* @IFM_ETHER, align 4
  %117 = load i32, i32* @IFM_AUTO, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @ifmedia_add(i32* %115, i32 %118, i32 0, i32* null)
  %120 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %121 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %120, i32 0, i32 0
  %122 = load i32, i32* @IFM_ETHER, align 4
  %123 = load i32, i32* @IFM_AUTO, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @ifmedia_set(i32* %121, i32 %124)
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = call i32 @ether_ifattach(%struct.ifnet* %126, i32* %12)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %128

128:                                              ; preds = %19, %17
  %129 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @ndis_probe_offload(%struct.ndis_softc*) #2

declare dso_local i32 @ndis_get_info(%struct.ndis_softc*, i32, i32*, i32*) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #2

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #2

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #2

declare dso_local i32 @ifmedia_set(i32*, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
