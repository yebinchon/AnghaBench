; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_rgtr_async_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_rgtr_async_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.hwrm_func_drv_rgtr_input = type { i32*, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@HWRM_FUNC_DRV_RGTR = common dso_local global i32 0, align 4
@HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_ASYNC_EVENT_FWD = common dso_local global i32 0, align 4
@HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_STATUS_CHANGE = common dso_local global i32 0, align 4
@HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PF_DRVR_UNLOAD = common dso_local global i32 0, align 4
@HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PORT_CONN_NOT_ALLOWED = common dso_local global i32 0, align 4
@HWRM_ASYNC_EVENT_CMPL_EVENT_ID_VF_CFG_CHANGE = common dso_local global i32 0, align 4
@HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_SPEED_CFG_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_func_rgtr_async_events(%struct.bnxt_softc* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hwrm_func_drv_rgtr_input, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.hwrm_func_drv_rgtr_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i32* @bit_alloc(i32 256, i32 %12, i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  store i32* %17, i32** %9, align 8
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %19 = load i32, i32* @HWRM_FUNC_DRV_RGTR, align 4
  %20 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %18, %struct.hwrm_func_drv_rgtr_input* %7, i32 %19)
  %21 = load i32, i32* @HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_ASYNC_EVENT_FWD, align 4
  %22 = call i32 @htole32(i32 %21)
  %23 = getelementptr inbounds %struct.hwrm_func_drv_rgtr_input, %struct.hwrm_func_drv_rgtr_input* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_STATUS_CHANGE, align 4
  %28 = call i32 @bit_set(i32* %26, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PF_DRVR_UNLOAD, align 4
  %31 = call i32 @bit_set(i32* %29, i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PORT_CONN_NOT_ALLOWED, align 4
  %34 = call i32 @bit_set(i32* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @HWRM_ASYNC_EVENT_CMPL_EVENT_ID_VF_CFG_CHANGE, align 4
  %37 = call i32 @bit_set(i32* %35, i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_SPEED_CFG_CHANGE, align 4
  %40 = call i32 @bit_set(i32* %38, i32 %39)
  %41 = load i64*, i64** %5, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i64*, i64** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @bit_test(i64* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @bit_set(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %47

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %43, %3
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %83, %65
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @htole32(i32 %74)
  %76 = getelementptr inbounds %struct.hwrm_func_drv_rgtr_input, %struct.hwrm_func_drv_rgtr_input* %7, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %75
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %66

86:                                               ; preds = %66
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* @M_DEVBUF, align 4
  %89 = call i32 @free(i32* %87, i32 %88)
  %90 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %91 = call i32 @hwrm_send_message(%struct.bnxt_softc* %90, %struct.hwrm_func_drv_rgtr_input* %7, i32 16)
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @bit_alloc(i32, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_func_drv_rgtr_input*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @bit_set(i32*, i32) #2

declare dso_local i64 @bit_test(i64*, i32) #2

declare dso_local i32 @free(i32*, i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_func_drv_rgtr_input*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
