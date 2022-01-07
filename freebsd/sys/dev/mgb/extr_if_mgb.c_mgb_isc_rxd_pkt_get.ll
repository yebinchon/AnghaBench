; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_rxd_pkt_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_rxd_pkt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.mgb_softc = type { i32, %struct.mgb_ring_data }
%struct.mgb_ring_data = type { i64*, i64, %struct.mgb_ring_desc* }
%struct.mgb_ring_desc = type { i32, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [46 x i8] c"tried to check availability in RX Channel %d\0A\00", align 1
@MGB_DESC_CTL_OWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Tried to read descriptor ... found that it's owned by the driver\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MGB_RX_DESC_CTL_FS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Tried to read descriptor ... found that FS is not set.\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Tried to read descriptor ... that it FS is not set.\0A\00", align 1
@MGB_RX_DESC_CTL_LS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [97 x i8] c"Tried to read descriptor ... found that LS is not set. (Multi-buffer packets not yet supported)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @mgb_isc_rxd_pkt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_isc_rxd_pkt_get(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.mgb_softc*, align 8
  %7 = alloca %struct.mgb_ring_data*, align 8
  %8 = alloca %struct.mgb_ring_desc, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(i32 %14, i8* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.mgb_softc*
  store %struct.mgb_softc* %21, %struct.mgb_softc** %6, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %23 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %22, i32 0, i32 1
  store %struct.mgb_ring_data* %23, %struct.mgb_ring_data** %7, align 8
  br label %24

24:                                               ; preds = %2
  %25 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %7, align 8
  %26 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %7, align 8
  %30 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %135

33:                                               ; preds = %24
  %34 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %7, align 8
  %35 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %34, i32 0, i32 2
  %36 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %35, align 8
  %37 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %7, align 8
  %38 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %36, i64 %39
  %41 = bitcast %struct.mgb_ring_desc* %8 to i8*
  %42 = bitcast %struct.mgb_ring_desc* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 32, i1 false)
  %43 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @le32toh(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @le32toh(i32 %49)
  %51 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @le32toh(i32 %54)
  %56 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @le32toh(i32 %59)
  %61 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MGB_DESC_CTL_OWN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %33
  %68 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %69 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %3, align 4
  br label %141

73:                                               ; preds = %33
  %74 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MGB_RX_DESC_CTL_FS, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %81 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %85 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %3, align 4
  br label %141

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MGB_RX_DESC_CTL_LS, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %97 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %3, align 4
  br label %141

101:                                              ; preds = %89
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %7, align 8
  %108 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i64 %109, i64* %114, align 8
  %115 = call i32 @MGB_DESC_GET_FRAME_LEN(%struct.mgb_ring_desc* %8)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %115, i32* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %7, align 8
  %130 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @MGB_NEXT_RING_IDX(i64 %131)
  %133 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %7, align 8
  %134 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %101, %24
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %135, %95, %79, %67
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @KASSERT(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @le32toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MGB_DESC_GET_FRAME_LEN(%struct.mgb_ring_desc*) #1

declare dso_local i64 @MGB_NEXT_RING_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
