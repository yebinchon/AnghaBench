; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_cfg_async_cr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_cfg_async_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hwrm_func_cfg_input = type { i8*, i8*, i32, i8* }
%struct.hwrm_func_vf_cfg_input = type { i8*, i8*, i32, i8* }

@HWRM_FUNC_CFG = common dso_local global i32 0, align 4
@HWRM_FUNC_CFG_INPUT_ENABLES_ASYNC_EVENT_CR = common dso_local global i32 0, align 4
@HWRM_FUNC_VF_CFG = common dso_local global i32 0, align 4
@HWRM_FUNC_VF_CFG_INPUT_ENABLES_ASYNC_EVENT_CR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_cfg_async_cr(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwrm_func_cfg_input, align 8
  %5 = alloca %struct.hwrm_func_vf_cfg_input, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %7 = call i64 @BNXT_PF(%struct.bnxt_softc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = bitcast %struct.hwrm_func_cfg_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %12 = bitcast %struct.hwrm_func_cfg_input* %4 to %struct.hwrm_func_vf_cfg_input*
  %13 = load i32, i32* @HWRM_FUNC_CFG, align 4
  %14 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %11, %struct.hwrm_func_vf_cfg_input* %12, i32 %13)
  %15 = call i8* @htole16(i32 65535)
  %16 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %4, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @HWRM_FUNC_CFG_INPUT_ENABLES_ASYNC_EVENT_CR, align 4
  %18 = call i8* @htole32(i32 %17)
  %19 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %4, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @htole16(i32 %24)
  %26 = getelementptr inbounds %struct.hwrm_func_cfg_input, %struct.hwrm_func_cfg_input* %4, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %28 = bitcast %struct.hwrm_func_cfg_input* %4 to %struct.hwrm_func_vf_cfg_input*
  %29 = call i32 @hwrm_send_message(%struct.bnxt_softc* %27, %struct.hwrm_func_vf_cfg_input* %28, i32 32)
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %1
  %31 = bitcast %struct.hwrm_func_vf_cfg_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 32, i1 false)
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %33 = load i32, i32* @HWRM_FUNC_VF_CFG, align 4
  %34 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %32, %struct.hwrm_func_vf_cfg_input* %5, i32 %33)
  %35 = load i32, i32* @HWRM_FUNC_VF_CFG_INPUT_ENABLES_ASYNC_EVENT_CR, align 4
  %36 = call i8* @htole32(i32 %35)
  %37 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %5, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @htole16(i32 %42)
  %44 = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, %struct.hwrm_func_vf_cfg_input* %5, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %46 = call i32 @hwrm_send_message(%struct.bnxt_softc* %45, %struct.hwrm_func_vf_cfg_input* %5, i32 32)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %30, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @BNXT_PF(%struct.bnxt_softc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_func_vf_cfg_input*, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_func_vf_cfg_input*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
