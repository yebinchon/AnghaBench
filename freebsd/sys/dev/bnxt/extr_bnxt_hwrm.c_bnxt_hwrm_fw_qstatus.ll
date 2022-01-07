; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_fw_qstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_fw_qstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_fw_qstatus_input = type { i32, i32 }
%struct.hwrm_fw_qstatus_output = type { i32 }

@HWRM_FW_QSTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_fw_qstatus(%struct.bnxt_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hwrm_fw_qstatus_input, align 4
  %8 = alloca %struct.hwrm_fw_qstatus_output*, align 8
  %9 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = bitcast %struct.hwrm_fw_qstatus_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.hwrm_fw_qstatus_output*
  store %struct.hwrm_fw_qstatus_output* %16, %struct.hwrm_fw_qstatus_output** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @MPASS(i32* %17)
  %19 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %20 = load i32, i32* @HWRM_FW_QSTATUS, align 4
  %21 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %19, %struct.hwrm_fw_qstatus_input* %7, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds %struct.hwrm_fw_qstatus_input, %struct.hwrm_fw_qstatus_input* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %25 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %24)
  %26 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %27 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %26, %struct.hwrm_fw_qstatus_input* %7, i32 8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %36

31:                                               ; preds = %3
  %32 = load %struct.hwrm_fw_qstatus_output*, %struct.hwrm_fw_qstatus_output** %8, align 8
  %33 = getelementptr inbounds %struct.hwrm_fw_qstatus_output, %struct.hwrm_fw_qstatus_output* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %30
  %37 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %38 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %37)
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MPASS(i32*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_fw_qstatus_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_fw_qstatus_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
