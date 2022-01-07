; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_vnic_tpa_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_vnic_tpa_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i32, i64, i64 }
%struct.hwrm_vnic_tpa_cfg_input = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@HWRM_NA_SIGNATURE = common dso_local global i64 0, align 8
@HWRM_VNIC_TPA_CFG = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_FLAGS_TPA = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_FLAGS_ENCAP_TPA = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_FLAGS_AGG_WITH_ECN = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_FLAGS_AGG_WITH_SAME_GRE_SEQ = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_FLAGS_GRO = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_FLAGS_RSC_WND_UPDATE = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_ENABLES_MAX_AGG_SEGS = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_ENABLES_MAX_AGGS = common dso_local global i32 0, align 4
@HWRM_VNIC_TPA_CFG_INPUT_ENABLES_MIN_AGG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_vnic_tpa_cfg(%struct.bnxt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.hwrm_vnic_tpa_cfg_input, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  %6 = bitcast %struct.hwrm_vnic_tpa_cfg_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 56, i1 false)
  %7 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

14:                                               ; preds = %1
  %15 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %16 = load i32, i32* @HWRM_VNIC_TPA_CFG, align 4
  %17 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %15, %struct.hwrm_vnic_tpa_cfg_input* %4, i32 %16)
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %14
  %24 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_FLAGS_TPA, align 4
  %25 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_FLAGS_ENCAP_TPA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_FLAGS_AGG_WITH_ECN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_FLAGS_AGG_WITH_SAME_GRE_SEQ, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_FLAGS_GRO, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %44

40:                                               ; preds = %23
  %41 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_FLAGS_RSC_WND_UPDATE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @htole32(i32 %45)
  %47 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %4, i32 0, i32 5
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_ENABLES_MAX_AGG_SEGS, align 4
  %49 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_ENABLES_MAX_AGGS, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @HWRM_VNIC_TPA_CFG_INPUT_ENABLES_MIN_AGG_LEN, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @htole32(i32 %52)
  %54 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %4, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %56 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @htole16(i64 %58)
  %60 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %4, i32 0, i32 3
  store i8* %59, i8** %60, align 8
  %61 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %62 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @htole16(i64 %64)
  %66 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %4, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %68 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @htole32(i32 %70)
  %72 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %4, i32 0, i32 1
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %44, %14
  %74 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %75 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @htole16(i64 %77)
  %79 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %4, i32 0, i32 0
  store i8* %78, i8** %79, align 8
  %80 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %81 = call i32 @hwrm_send_message(%struct.bnxt_softc* %80, %struct.hwrm_vnic_tpa_cfg_input* %4, i32 56)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %73, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_vnic_tpa_cfg_input*, i32) #2

declare dso_local i8* @htole32(i32) #2

declare dso_local i8* @htole16(i64) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_vnic_tpa_cfg_input*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
