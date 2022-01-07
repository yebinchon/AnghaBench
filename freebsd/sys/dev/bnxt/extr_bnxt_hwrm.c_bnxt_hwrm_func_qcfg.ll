; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_qcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_qcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.bnxt_func_qcfg, %struct.TYPE_2__ }
%struct.bnxt_func_qcfg = type { i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_func_qcfg_input = type { i32, i32 }
%struct.hwrm_func_qcfg_output = type { i32, i32, i32, i32 }

@HWRM_FUNC_QCFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_func_qcfg(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.hwrm_func_qcfg_input, align 4
  %4 = alloca %struct.hwrm_func_qcfg_output*, align 8
  %5 = alloca %struct.bnxt_func_qcfg*, align 8
  %6 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %7 = bitcast %struct.hwrm_func_qcfg_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hwrm_func_qcfg_output*
  store %struct.hwrm_func_qcfg_output* %13, %struct.hwrm_func_qcfg_output** %4, align 8
  %14 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %15 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %14, i32 0, i32 0
  store %struct.bnxt_func_qcfg* %15, %struct.bnxt_func_qcfg** %5, align 8
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %17 = load i32, i32* @HWRM_FUNC_QCFG, align 4
  %18 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %16, %struct.hwrm_func_qcfg_input* %3, i32 %17)
  %19 = call i32 @htole16(i32 65535)
  %20 = getelementptr inbounds %struct.hwrm_func_qcfg_input, %struct.hwrm_func_qcfg_input* %3, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %22 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %21)
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %24 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %23, %struct.hwrm_func_qcfg_input* %3, i32 8)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %53

28:                                               ; preds = %1
  %29 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %30 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16toh(i32 %31)
  %33 = load %struct.bnxt_func_qcfg*, %struct.bnxt_func_qcfg** %5, align 8
  %34 = getelementptr inbounds %struct.bnxt_func_qcfg, %struct.bnxt_func_qcfg* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %36 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le16toh(i32 %37)
  %39 = load %struct.bnxt_func_qcfg*, %struct.bnxt_func_qcfg** %5, align 8
  %40 = getelementptr inbounds %struct.bnxt_func_qcfg, %struct.bnxt_func_qcfg* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %42 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le16toh(i32 %43)
  %45 = load %struct.bnxt_func_qcfg*, %struct.bnxt_func_qcfg** %5, align 8
  %46 = getelementptr inbounds %struct.bnxt_func_qcfg, %struct.bnxt_func_qcfg* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %48 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le16toh(i32 %49)
  %51 = load %struct.bnxt_func_qcfg*, %struct.bnxt_func_qcfg** %5, align 8
  %52 = getelementptr inbounds %struct.bnxt_func_qcfg, %struct.bnxt_func_qcfg* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %28, %27
  %54 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %55 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_func_qcfg_input*, i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_func_qcfg_input*, i32) #2

declare dso_local i8* @le16toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
