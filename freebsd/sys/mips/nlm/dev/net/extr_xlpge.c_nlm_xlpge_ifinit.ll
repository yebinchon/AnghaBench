; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_ifinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_ifinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32, %struct.TYPE_13__, i64, i32, i32, i64, i64, %struct.nlm_xlpge_softc* }
%struct.TYPE_13__ = type { i32 }
%struct.nlm_xlpge_softc = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.ifnet*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@IFT_ETHER = common dso_local global i32 0, align 4
@ifp_ports = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"cannot if_alloc()\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@nlm_xlpge_ioctl = common dso_local global i32 0, align 4
@nlm_xlpge_init = common dso_local global i32 0, align 4
@NLM_XLPGE_TXQ_SIZE = common dso_local global i32 0, align 4
@xlpge_mediachange = common dso_local global i32 0, align 4
@xlpge_mediastatus = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@xlpge_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_xlpge_softc*)* @nlm_xlpge_ifinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_xlpge_ifinit(%struct.nlm_xlpge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlm_xlpge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nlm_xlpge_softc* %0, %struct.nlm_xlpge_softc** %3, align 8
  %7 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %9, 4
  %11 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %16 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @IFT_ETHER, align 4
  %19 = call %struct.ifnet* @if_alloc(i32 %18)
  %20 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %20, i32 0, i32 5
  store %struct.ifnet* %19, %struct.ifnet** %21, align 8
  store %struct.ifnet* %19, %struct.ifnet** %4, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ifp_ports, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store %struct.ifnet* %22, %struct.ifnet** %27, align 8
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = icmp eq %struct.ifnet* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOSPC, align 4
  store i32 %33, i32* %2, align 4
  br label %126

34:                                               ; preds = %1
  %35 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 8
  store %struct.nlm_xlpge_softc* %35, %struct.nlm_xlpge_softc** %37, align 8
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @device_get_name(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @device_get_unit(i32 %41)
  %43 = call i32 @if_initname(%struct.ifnet* %38, i32 %40, i32 %42)
  %44 = load i32, i32* @IFF_BROADCAST, align 4
  %45 = load i32, i32* @IFF_SIMPLEX, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IFF_MULTICAST, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %55 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 7
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @nlm_xlpge_ioctl, align 4
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @nlm_xlpge_init, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @NLM_XLPGE_TXQ_SIZE, align 4
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 2
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_13__* %76, i32 %80)
  %82 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 2
  %84 = call i32 @IFQ_SET_READY(%struct.TYPE_13__* %83)
  %85 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %86 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* @xlpge_mediachange, align 4
  %89 = load i32, i32* @xlpge_mediastatus, align 4
  %90 = call i32 @ifmedia_init(%struct.TYPE_12__* %87, i32 0, i32 %88, i32 %89)
  %91 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %92 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* @IFM_ETHER, align 4
  %95 = load i32, i32* @IFM_AUTO, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @ifmedia_add(%struct.TYPE_12__* %93, i32 %96, i32 0, i32* null)
  %98 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %99 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* @IFM_ETHER, align 4
  %102 = load i32, i32* @IFM_AUTO, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @ifmedia_set(%struct.TYPE_12__* %100, i32 %103)
  %105 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %106 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %113 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 8
  %116 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %117 = call i32 @xlpge_read_mac_addr(%struct.nlm_xlpge_softc* %116)
  %118 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %119 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %120 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ether_ifattach(%struct.ifnet* %118, i32 %121)
  %123 = load i32, i32* @xlpge_tx, align 4
  %124 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %125 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %34, %30
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_13__*) #1

declare dso_local i32 @ifmedia_init(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xlpge_read_mac_addr(%struct.nlm_xlpge_softc*) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
