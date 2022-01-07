; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bnxt_vnic_info = type { i32, i8*, i32 }
%struct.hwrm_cfa_l2_filter_alloc_input = type { i32, i32, i32, i8*, i8*, i32 }
%struct.hwrm_cfa_l2_filter_alloc_output = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Attempt to re-allocate l2 ctx filter\0A\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@HWRM_CFA_L2_FILTER_ALLOC = common dso_local global i32 0, align 4
@HWRM_CFA_L2_FILTER_ALLOC_INPUT_FLAGS_PATH_RX = common dso_local global i32 0, align 4
@HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_L2_ADDR = common dso_local global i32 0, align 4
@HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_L2_ADDR_MASK = common dso_local global i32 0, align 4
@HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_DST_ID = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_set_filter(%struct.bnxt_softc* %0, %struct.bnxt_vnic_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca %struct.bnxt_vnic_info*, align 8
  %6 = alloca %struct.hwrm_cfa_l2_filter_alloc_input, align 8
  %7 = alloca %struct.hwrm_cfa_l2_filter_alloc_output*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %4, align 8
  store %struct.bnxt_vnic_info* %1, %struct.bnxt_vnic_info** %5, align 8
  %10 = bitcast %struct.hwrm_cfa_l2_filter_alloc_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %12 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EDOOFUS, align 4
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.hwrm_cfa_l2_filter_alloc_output*
  store %struct.hwrm_cfa_l2_filter_alloc_output* %27, %struct.hwrm_cfa_l2_filter_alloc_output** %7, align 8
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %29 = load i32, i32* @HWRM_CFA_L2_FILTER_ALLOC, align 4
  %30 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %28, %struct.hwrm_cfa_l2_filter_alloc_input* %6, i32 %29)
  %31 = load i32, i32* @HWRM_CFA_L2_FILTER_ALLOC_INPUT_FLAGS_PATH_RX, align 4
  %32 = call i8* @htole32(i32 %31)
  %33 = getelementptr inbounds %struct.hwrm_cfa_l2_filter_alloc_input, %struct.hwrm_cfa_l2_filter_alloc_input* %6, i32 0, i32 4
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_L2_ADDR, align 4
  %35 = load i32, i32* @HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_L2_ADDR_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @HWRM_CFA_L2_FILTER_ALLOC_INPUT_ENABLES_DST_ID, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @htole32(i32 %39)
  %41 = getelementptr inbounds %struct.hwrm_cfa_l2_filter_alloc_input, %struct.hwrm_cfa_l2_filter_alloc_input* %6, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %43 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @htole16(i32 %44)
  %46 = getelementptr inbounds %struct.hwrm_cfa_l2_filter_alloc_input, %struct.hwrm_cfa_l2_filter_alloc_input* %6, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.hwrm_cfa_l2_filter_alloc_input, %struct.hwrm_cfa_l2_filter_alloc_input* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %50 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @iflib_get_ifp(i32 %51)
  %53 = call i32 @if_getlladdr(i32 %52)
  %54 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %55 = call i32 @memcpy(i32 %48, i32 %53, i32 %54)
  %56 = getelementptr inbounds %struct.hwrm_cfa_l2_filter_alloc_input, %struct.hwrm_cfa_l2_filter_alloc_input* %6, i32 0, i32 0
  %57 = call i32 @memset(i32* %56, i32 255, i32 4)
  %58 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %59 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %58)
  %60 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %61 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %60, %struct.hwrm_cfa_l2_filter_alloc_input* %6, i32 40)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %21
  br label %79

65:                                               ; preds = %21
  %66 = load %struct.hwrm_cfa_l2_filter_alloc_output*, %struct.hwrm_cfa_l2_filter_alloc_output** %7, align 8
  %67 = getelementptr inbounds %struct.hwrm_cfa_l2_filter_alloc_output, %struct.hwrm_cfa_l2_filter_alloc_output* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le64toh(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %72 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hwrm_cfa_l2_filter_alloc_output*, %struct.hwrm_cfa_l2_filter_alloc_output** %7, align 8
  %74 = getelementptr inbounds %struct.hwrm_cfa_l2_filter_alloc_output, %struct.hwrm_cfa_l2_filter_alloc_output* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le64toh(i32 %75)
  %77 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %78 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %65, %64
  %80 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %81 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_cfa_l2_filter_alloc_input*, i32) #2

declare dso_local i8* @htole32(i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @if_getlladdr(i32) #2

declare dso_local i32 @iflib_get_ifp(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_cfa_l2_filter_alloc_input*, i32) #2

declare dso_local i8* @le64toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
