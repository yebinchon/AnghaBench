; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_get_wol_fltrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_get_wol_fltrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.hwrm_wol_filter_qcfg_input = type { i8*, i8*, i32 }
%struct.hwrm_wol_filter_qcfg_output = type { i64, i32, i32 }

@HWRM_WOL_FILTER_QCFG = common dso_local global i32 0, align 4
@HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bnxt_hwrm_get_wol_fltrs(%struct.bnxt_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hwrm_wol_filter_qcfg_input, align 8
  %6 = alloca %struct.hwrm_wol_filter_qcfg_output*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast %struct.hwrm_wol_filter_qcfg_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hwrm_wol_filter_qcfg_output*
  store %struct.hwrm_wol_filter_qcfg_output* %15, %struct.hwrm_wol_filter_qcfg_output** %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %17 = load i32, i32* @HWRM_WOL_FILTER_QCFG, align 4
  %18 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %16, %struct.hwrm_wol_filter_qcfg_input* %5, i32 %17)
  %19 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @htole16(i64 %22)
  %24 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_input, %struct.hwrm_wol_filter_qcfg_input* %5, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i8* @htole16(i64 %25)
  %27 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_input, %struct.hwrm_wol_filter_qcfg_input* %5, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %29 = call i32 @hwrm_send_message(%struct.bnxt_softc* %28, %struct.hwrm_wol_filter_qcfg_input* %5, i32 24)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %2
  %33 = load %struct.hwrm_wol_filter_qcfg_output*, %struct.hwrm_wol_filter_qcfg_output** %6, align 8
  %34 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_output, %struct.hwrm_wol_filter_qcfg_output* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le16toh(i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.hwrm_wol_filter_qcfg_output*, %struct.hwrm_wol_filter_qcfg_output** %6, align 8
  %41 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_output, %struct.hwrm_wol_filter_qcfg_output* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.hwrm_wol_filter_qcfg_output*, %struct.hwrm_wol_filter_qcfg_output** %6, align 8
  %49 = getelementptr inbounds %struct.hwrm_wol_filter_qcfg_output, %struct.hwrm_wol_filter_qcfg_output* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %52 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %39
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i64, i64* %7, align 8
  ret i64 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_wol_filter_qcfg_input*, i32) #2

declare dso_local i8* @htole16(i64) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_wol_filter_qcfg_input*, i32) #2

declare dso_local i64 @le16toh(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
