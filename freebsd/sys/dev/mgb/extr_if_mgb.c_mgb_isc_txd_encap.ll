; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_txd_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_txd_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mgb_softc = type { %struct.mgb_ring_data, i32 }
%struct.mgb_ring_data = type { %struct.mgb_ring_desc* }
%struct.mgb_ring_desc = type { i8*, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [32 x i8] c"tried to refill TX Channel %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Multisegment packet !!!!!\0A\00", align 1
@MGB_DESC_CTL_BUFLEN_MASK = common dso_local global i32 0, align 4
@MGB_TX_DESC_CTL_FS = common dso_local global i32 0, align 4
@MGB_TX_DESC_CTL_LS = common dso_local global i32 0, align 4
@MGB_DESC_CTL_FCS = common dso_local global i32 0, align 4
@MGB_DESC_FRAME_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @mgb_isc_txd_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_isc_txd_encap(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.mgb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgb_ring_data*, align 8
  %8 = alloca %struct.mgb_ring_desc*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %17, i8* %21)
  %23 = load i8*, i8** %3, align 8
  %24 = bitcast i8* %23 to %struct.mgb_softc*
  store %struct.mgb_softc* %24, %struct.mgb_softc** %5, align 8
  %25 = load %struct.mgb_softc*, %struct.mgb_softc** %5, align 8
  %26 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @iflib_get_softc_ctx(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.mgb_softc*, %struct.mgb_softc** %5, align 8
  %30 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %29, i32 0, i32 0
  store %struct.mgb_ring_data* %30, %struct.mgb_ring_data** %7, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %9, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %108, %2
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %111

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %7, align 8
  %50 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %49, i32 0, i32 0
  %51 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %51, i64 %53
  store %struct.mgb_ring_desc* %54, %struct.mgb_ring_desc** %8, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MGB_DESC_CTL_BUFLEN_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @MGB_TX_DESC_CTL_FS, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MGB_TX_DESC_CTL_LS, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MGB_DESC_CTL_FCS, align 4
  %68 = or i32 %66, %67
  %69 = call i8* @htole32(i32 %68)
  %70 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %8, align 8
  %71 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CSR_TRANSLATE_ADDR_LOW32(i32 %77)
  %79 = call i8* @htole32(i32 %78)
  %80 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %8, align 8
  %81 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @CSR_TRANSLATE_ADDR_HIGH32(i32 %88)
  %90 = call i8* @htole32(i32 %89)
  %91 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %8, align 8
  %92 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 16
  %101 = load i32, i32* @MGB_DESC_FRAME_LEN_MASK, align 4
  %102 = and i32 %100, %101
  %103 = call i8* @htole32(i32 %102)
  %104 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %8, align 8
  %105 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @MGB_NEXT_RING_IDX(i32 %106)
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %44
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %40

111:                                              ; preds = %40
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @iflib_get_softc_ctx(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @CSR_TRANSLATE_ADDR_LOW32(i32) #1

declare dso_local i32 @CSR_TRANSLATE_ADDR_HIGH32(i32) #1

declare dso_local i32 @MGB_NEXT_RING_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
