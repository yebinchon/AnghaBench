; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_stat_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_stat_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bnxt_cp_ring = type { i32 }
%struct.hwrm_stat_ctx_alloc_input = type { i32, i32, i32 }
%struct.hwrm_stat_ctx_alloc_output = type { i32 }

@HWRM_NA_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Attempt to re-allocate stats ctx %08x\0A\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@HWRM_STAT_CTX_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_stat_ctx_alloc(%struct.bnxt_softc* %0, %struct.bnxt_cp_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_softc*, align 8
  %6 = alloca %struct.bnxt_cp_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hwrm_stat_ctx_alloc_input, align 4
  %9 = alloca %struct.hwrm_stat_ctx_alloc_output*, align 8
  %10 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %5, align 8
  store %struct.bnxt_cp_ring* %1, %struct.bnxt_cp_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.hwrm_stat_ctx_alloc_input* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  store i32 0, i32* %10, align 4
  %12 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %6, align 8
  %13 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HWRM_NA_SIGNATURE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %19 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %6, align 8
  %22 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EDOOFUS, align 4
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %3
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %28 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.hwrm_stat_ctx_alloc_output*
  store %struct.hwrm_stat_ctx_alloc_output* %32, %struct.hwrm_stat_ctx_alloc_output** %9, align 8
  %33 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %34 = load i32, i32* @HWRM_STAT_CTX_ALLOC, align 4
  %35 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %33, %struct.hwrm_stat_ctx_alloc_input* %8, i32 %34)
  %36 = call i32 @htole32(i32 1000)
  %37 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_input, %struct.hwrm_stat_ctx_alloc_input* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @htole64(i32 %38)
  %40 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_input, %struct.hwrm_stat_ctx_alloc_input* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %42 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %41)
  %43 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %44 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %43, %struct.hwrm_stat_ctx_alloc_input* %8, i32 12)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %55

48:                                               ; preds = %26
  %49 = load %struct.hwrm_stat_ctx_alloc_output*, %struct.hwrm_stat_ctx_alloc_output** %9, align 8
  %50 = getelementptr inbounds %struct.hwrm_stat_ctx_alloc_output, %struct.hwrm_stat_ctx_alloc_output* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32toh(i32 %51)
  %53 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %6, align 8
  %54 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %47
  %56 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %57 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_stat_ctx_alloc_input*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i32 @htole64(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_stat_ctx_alloc_input*, i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
