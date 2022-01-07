; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_alloc_wol_fltr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_alloc_wol_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.hwrm_wol_filter_alloc_input = type { i32, i32, i32, i32, i32 }
%struct.hwrm_wol_filter_alloc_output = type { i32 }

@HWRM_WOL_FILTER_ALLOC = common dso_local global i32 0, align 4
@HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT = common dso_local global i32 0, align 4
@HWRM_WOL_FILTER_ALLOC_INPUT_ENABLES_MAC_ADDRESS = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_alloc_wol_fltr(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.hwrm_wol_filter_alloc_input, align 4
  %4 = alloca %struct.hwrm_wol_filter_alloc_output*, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %6 = bitcast %struct.hwrm_wol_filter_alloc_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 20, i1 false)
  %7 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hwrm_wol_filter_alloc_output*
  store %struct.hwrm_wol_filter_alloc_output* %12, %struct.hwrm_wol_filter_alloc_output** %4, align 8
  %13 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %14 = load i32, i32* @HWRM_WOL_FILTER_ALLOC, align 4
  %15 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %13, %struct.hwrm_wol_filter_alloc_input* %3, i32 %14)
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @htole16(i32 %19)
  %21 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_input, %struct.hwrm_wol_filter_alloc_input* %3, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT, align 4
  %23 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_input, %struct.hwrm_wol_filter_alloc_input* %3, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @HWRM_WOL_FILTER_ALLOC_INPUT_ENABLES_MAC_ADDRESS, align 4
  %25 = call i32 @htole32(i32 %24)
  %26 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_input, %struct.hwrm_wol_filter_alloc_input* %3, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_input, %struct.hwrm_wol_filter_alloc_input* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %34 = call i32 @memcpy(i32 %28, i32 %32, i32 %33)
  %35 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %36 = call i32 @hwrm_send_message(%struct.bnxt_softc* %35, %struct.hwrm_wol_filter_alloc_input* %3, i32 20)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %1
  %40 = load %struct.hwrm_wol_filter_alloc_output*, %struct.hwrm_wol_filter_alloc_output** %4, align 8
  %41 = getelementptr inbounds %struct.hwrm_wol_filter_alloc_output, %struct.hwrm_wol_filter_alloc_output* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %1
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_wol_filter_alloc_input*, i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_wol_filter_alloc_input*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
