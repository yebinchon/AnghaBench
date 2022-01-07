; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i64, i64, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.fxp_tx* }
%struct.fxp_tx = type { %struct.TYPE_5__*, i32*, i32, %struct.fxp_tx* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@FXP_CB_STATUS_C = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*)* @fxp_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_txeof(%struct.fxp_softc* %0) #0 {
  %2 = alloca %struct.fxp_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fxp_tx*, align 8
  store %struct.fxp_softc* %0, %struct.fxp_softc** %2, align 8
  %5 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %6 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %9 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %12 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %15 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @bus_dmamap_sync(i32 %10, i32 %13, i32 %16)
  %18 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %19 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.fxp_tx*, %struct.fxp_tx** %20, align 8
  store %struct.fxp_tx* %21, %struct.fxp_tx** %4, align 8
  br label %22

22:                                               ; preds = %81, %1
  %23 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %24 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %29 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le16toh(i32 %32)
  %34 = load i32, i32* @FXP_CB_STATUS_C, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %27, %22
  %38 = phi i1 [ false, %22 ], [ %36, %27 ]
  br i1 %38, label %39, label %85

39:                                               ; preds = %37
  %40 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %41 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %73

44:                                               ; preds = %39
  %45 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %46 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %49 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %52 = call i32 @bus_dmamap_sync(i32 %47, i32 %50, i32 %51)
  %53 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %54 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %57 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @bus_dmamap_unload(i32 %55, i32 %58)
  %60 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %61 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @m_freem(i32* %62)
  %64 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %65 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %67 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %44, %39
  %74 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %75 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %80 = call i32 @if_setdrvflagbits(i32 %78, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %83 = getelementptr inbounds %struct.fxp_tx, %struct.fxp_tx* %82, i32 0, i32 3
  %84 = load %struct.fxp_tx*, %struct.fxp_tx** %83, align 8
  store %struct.fxp_tx* %84, %struct.fxp_tx** %4, align 8
  br label %22

85:                                               ; preds = %37
  %86 = load %struct.fxp_tx*, %struct.fxp_tx** %4, align 8
  %87 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %88 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store %struct.fxp_tx* %86, %struct.fxp_tx** %89, align 8
  %90 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %91 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %94 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %97 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @bus_dmamap_sync(i32 %92, i32 %95, i32 %98)
  %100 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %101 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %85
  %105 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %106 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %85
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
