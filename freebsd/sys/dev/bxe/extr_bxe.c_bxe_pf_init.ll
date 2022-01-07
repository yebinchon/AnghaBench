; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bxe_func_init_params = type { i32, i32, i32, i32, i32, i32 }
%struct.event_ring_data = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@IGU_REG_STATISTIC_NUM_MESSAGE_SENT = common dso_local global i64 0, align 8
@BXE_IGU_STAS_MSG_VF_CNT = common dso_local global i32 0, align 4
@BXE_IGU_STAS_MSG_PF_CNT = common dso_local global i32 0, align 4
@FUNC_FLG_STATS = common dso_local global i32 0, align 4
@FUNC_FLG_LEADING = common dso_local global i32 0, align 4
@FUNC_FLG_SPQ = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@FUNC_FLG_TPA = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HC_SP_INDEX_EQ_CONS = common dso_local global i32 0, align 4
@DEF_SB_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_pf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_pf_init(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_func_init_params, align 4
  %4 = alloca %struct.event_ring_data, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %6 = bitcast %struct.bxe_func_init_params* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 24, i1 false)
  %7 = bitcast %struct.event_ring_data* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %58, label %11

11:                                               ; preds = %1
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = load i64, i64* @IGU_REG_STATISTIC_NUM_MESSAGE_SENT, align 8
  %14 = load i32, i32* @BXE_IGU_STAS_MSG_VF_CNT, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %19 = call i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = call i32 @SC_FUNC(%struct.bxe_softc* %22)
  br label %27

24:                                               ; preds = %11
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %26 = call i32 @SC_VN(%struct.bxe_softc* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %17, %30
  %32 = call i32 @REG_WR(%struct.bxe_softc* %12, i64 %31, i32 0)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %34 = load i64, i64* @IGU_REG_STATISTIC_NUM_MESSAGE_SENT, align 8
  %35 = load i32, i32* @BXE_IGU_STAS_MSG_VF_CNT, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* @BXE_IGU_STAS_MSG_PF_CNT, align 4
  %40 = mul nsw i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %44 = call i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %48 = call i32 @SC_FUNC(%struct.bxe_softc* %47)
  br label %52

49:                                               ; preds = %27
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %51 = call i32 @SC_VN(%struct.bxe_softc* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %48, %46 ], [ %51, %49 ]
  %54 = mul nsw i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %42, %55
  %57 = call i32 @REG_WR(%struct.bxe_softc* %33, i64 %56, i32 0)
  br label %58

58:                                               ; preds = %52, %1
  %59 = load i32, i32* @FUNC_FLG_STATS, align 4
  %60 = load i32, i32* @FUNC_FLG_LEADING, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FUNC_FLG_SPQ, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %65 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @if_getcapenable(i32 %66)
  %68 = load i32, i32* @IFCAP_LRO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @FUNC_FLG_TPA, align 4
  br label %74

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = getelementptr inbounds %struct.bxe_func_init_params, %struct.bxe_func_init_params* %3, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %81 = call i32 @SC_FUNC(%struct.bxe_softc* %80)
  %82 = getelementptr inbounds %struct.bxe_func_init_params, %struct.bxe_func_init_params* %3, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %84 = call i32 @SC_FUNC(%struct.bxe_softc* %83)
  %85 = getelementptr inbounds %struct.bxe_func_init_params, %struct.bxe_func_init_params* %3, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.bxe_func_init_params, %struct.bxe_func_init_params* %3, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %92 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.bxe_func_init_params, %struct.bxe_func_init_params* %3, i32 0, i32 3
  store i32 %93, i32* %94, align 4
  %95 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %96 = call i32 @bxe_func_init(%struct.bxe_softc* %95, %struct.bxe_func_init_params* %3)
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %98 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %97, i32 0, i32 2
  %99 = call i32 @memset(i32* %98, i32 0, i32 4)
  %100 = load i32, i32* @SPEED_10000, align 4
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %102 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %107 = call i32 @bxe_get_cmng_fns_mode(%struct.bxe_softc* %106)
  %108 = call i32 @bxe_cmng_fns_init(%struct.bxe_softc* %104, i32 %105, i32 %107)
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %110 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %74
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %117 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %116, i32 0, i32 2
  %118 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %119 = call i32 @SC_PORT(%struct.bxe_softc* %118)
  %120 = call i32 @storm_memset_cmng(%struct.bxe_softc* %115, i32* %117, i32 %119)
  br label %121

121:                                              ; preds = %114, %74
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %123 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @U64_HI(i32 %125)
  %127 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %130 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @U64_LO(i32 %132)
  %134 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %137 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 2
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @HC_SP_INDEX_EQ_CONS, align 4
  %141 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 1
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* @DEF_SB_ID, align 4
  %143 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 0
  store i32 %142, i32* %143, align 4
  %144 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %145 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %146 = call i32 @SC_FUNC(%struct.bxe_softc* %145)
  %147 = call i32 @storm_memset_eq_data(%struct.bxe_softc* %144, %struct.event_ring_data* %4, i32 %146)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #2

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #2

declare dso_local i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc*) #2

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #2

declare dso_local i32 @SC_VN(%struct.bxe_softc*) #2

declare dso_local i32 @if_getcapenable(i32) #2

declare dso_local i32 @bxe_func_init(%struct.bxe_softc*, %struct.bxe_func_init_params*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @bxe_cmng_fns_init(%struct.bxe_softc*, i32, i32) #2

declare dso_local i32 @bxe_get_cmng_fns_mode(%struct.bxe_softc*) #2

declare dso_local i32 @storm_memset_cmng(%struct.bxe_softc*, i32*, i32) #2

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #2

declare dso_local i32 @U64_HI(i32) #2

declare dso_local i32 @U64_LO(i32) #2

declare dso_local i32 @storm_memset_eq_data(%struct.bxe_softc*, %struct.event_ring_data*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
