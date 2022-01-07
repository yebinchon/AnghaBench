; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_drv_rgtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_drv_rgtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.hwrm_func_drv_rgtr_input = type { i32, i32, i32, i32, i32, i32 }

@HWRM_FUNC_DRV_RGTR = common dso_local global i32 0, align 4
@HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_VER = common dso_local global i32 0, align 4
@HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_OS_TYPE = common dso_local global i32 0, align 4
@HWRM_FUNC_DRV_RGTR_INPUT_OS_TYPE_FREEBSD = common dso_local global i32 0, align 4
@__FreeBSD_version = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_func_drv_rgtr(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.hwrm_func_drv_rgtr_input, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %4 = bitcast %struct.hwrm_func_drv_rgtr_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 24, i1 false)
  %5 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %6 = load i32, i32* @HWRM_FUNC_DRV_RGTR, align 4
  %7 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %5, %struct.hwrm_func_drv_rgtr_input* %3, i32 %6)
  %8 = load i32, i32* @HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_VER, align 4
  %9 = load i32, i32* @HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_OS_TYPE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @htole32(i32 %10)
  %12 = getelementptr inbounds %struct.hwrm_func_drv_rgtr_input, %struct.hwrm_func_drv_rgtr_input* %3, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @HWRM_FUNC_DRV_RGTR_INPUT_OS_TYPE_FREEBSD, align 4
  %14 = call i32 @htole16(i32 %13)
  %15 = getelementptr inbounds %struct.hwrm_func_drv_rgtr_input, %struct.hwrm_func_drv_rgtr_input* %3, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @__FreeBSD_version, align 4
  %17 = sdiv i32 %16, 100000
  %18 = getelementptr inbounds %struct.hwrm_func_drv_rgtr_input, %struct.hwrm_func_drv_rgtr_input* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @__FreeBSD_version, align 4
  %20 = sdiv i32 %19, 1000
  %21 = srem i32 %20, 100
  %22 = getelementptr inbounds %struct.hwrm_func_drv_rgtr_input, %struct.hwrm_func_drv_rgtr_input* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @__FreeBSD_version, align 4
  %24 = sdiv i32 %23, 100
  %25 = srem i32 %24, 10
  %26 = getelementptr inbounds %struct.hwrm_func_drv_rgtr_input, %struct.hwrm_func_drv_rgtr_input* %3, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %28 = call i32 @hwrm_send_message(%struct.bnxt_softc* %27, %struct.hwrm_func_drv_rgtr_input* %3, i32 24)
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_func_drv_rgtr_input*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_func_drv_rgtr_input*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
