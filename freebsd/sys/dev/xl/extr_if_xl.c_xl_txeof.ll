; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { %struct.TYPE_2__, i64, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { %struct.xl_chain*, i32*, %struct.xl_chain* }
%struct.xl_chain = type { i32, %struct.xl_chain*, i32*, i32 }
%struct.ifnet = type { i32 }

@XL_DOWNLIST_PTR = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@XL_DMACTL = common dso_local global i32 0, align 4
@XL_DMACTL_DOWN_STALLED = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_DOWN_UNSTALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_txeof(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca %struct.xl_chain*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %5 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %6 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %5, i32 0, i32 3
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %4, align 8
  %8 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %9 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %8)
  br label %10

10:                                               ; preds = %26, %1
  %11 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %12 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.xl_chain*, %struct.xl_chain** %13, align 8
  %15 = icmp ne %struct.xl_chain* %14, null
  br i1 %15, label %16, label %73

16:                                               ; preds = %10
  %17 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %18 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.xl_chain*, %struct.xl_chain** %19, align 8
  store %struct.xl_chain* %20, %struct.xl_chain** %3, align 8
  %21 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %22 = load i32, i32* @XL_DOWNLIST_PTR, align 4
  %23 = call i32 @CSR_READ_4(%struct.xl_softc* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %73

26:                                               ; preds = %16
  %27 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %28 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %27, i32 0, i32 1
  %29 = load %struct.xl_chain*, %struct.xl_chain** %28, align 8
  %30 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %31 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.xl_chain* %29, %struct.xl_chain** %32, align 8
  %33 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %34 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %37 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %40 = call i32 @bus_dmamap_sync(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %42 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %45 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bus_dmamap_unload(i32 %43, i32 %46)
  %48 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %49 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @m_freem(i32* %50)
  %52 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %53 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %56 = call i32 @if_inc_counter(%struct.ifnet* %54, i32 %55, i32 1)
  %57 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %64 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load %struct.xl_chain*, %struct.xl_chain** %65, align 8
  %67 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %68 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %67, i32 0, i32 1
  store %struct.xl_chain* %66, %struct.xl_chain** %68, align 8
  %69 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %70 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %71 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store %struct.xl_chain* %69, %struct.xl_chain** %72, align 8
  br label %10

73:                                               ; preds = %25, %10
  %74 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %75 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.xl_chain*, %struct.xl_chain** %76, align 8
  %78 = icmp eq %struct.xl_chain* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %81 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %83 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  br label %112

85:                                               ; preds = %73
  %86 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %87 = load i32, i32* @XL_DMACTL, align 4
  %88 = call i32 @CSR_READ_4(%struct.xl_softc* %86, i32 %87)
  %89 = load i32, i32* @XL_DMACTL_DOWN_STALLED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %94 = load i32, i32* @XL_DOWNLIST_PTR, align 4
  %95 = call i32 @CSR_READ_4(%struct.xl_softc* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %92, %85
  %98 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %99 = load i32, i32* @XL_DOWNLIST_PTR, align 4
  %100 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %101 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load %struct.xl_chain*, %struct.xl_chain** %102, align 8
  %104 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @CSR_WRITE_4(%struct.xl_softc* %98, i32 %99, i32 %105)
  %107 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %108 = load i32, i32* @XL_COMMAND, align 4
  %109 = load i32, i32* @XL_CMD_DOWN_UNSTALL, align 4
  %110 = call i32 @CSR_WRITE_2(%struct.xl_softc* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %97, %92
  br label %112

112:                                              ; preds = %111, %79
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.xl_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
