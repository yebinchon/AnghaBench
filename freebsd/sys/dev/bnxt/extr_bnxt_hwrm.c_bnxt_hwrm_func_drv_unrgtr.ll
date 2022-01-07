; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_drv_unrgtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_drv_unrgtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.hwrm_func_drv_unrgtr_input = type { i32, i32 }

@HWRM_FUNC_DRV_UNRGTR = common dso_local global i32 0, align 4
@HWRM_FUNC_DRV_UNRGTR_INPUT_FLAGS_PREPARE_FOR_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_func_drv_unrgtr(%struct.bnxt_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwrm_func_drv_unrgtr_input, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.hwrm_func_drv_unrgtr_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %8 = load i32, i32* @HWRM_FUNC_DRV_UNRGTR, align 4
  %9 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %7, %struct.hwrm_func_drv_unrgtr_input* %5, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @HWRM_FUNC_DRV_UNRGTR_INPUT_FLAGS_PREPARE_FOR_SHUTDOWN, align 4
  %14 = getelementptr inbounds %struct.hwrm_func_drv_unrgtr_input, %struct.hwrm_func_drv_unrgtr_input* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %19 = call i32 @hwrm_send_message(%struct.bnxt_softc* %18, %struct.hwrm_func_drv_unrgtr_input* %5, i32 8)
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_func_drv_unrgtr_input*, i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_func_drv_unrgtr_input*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
