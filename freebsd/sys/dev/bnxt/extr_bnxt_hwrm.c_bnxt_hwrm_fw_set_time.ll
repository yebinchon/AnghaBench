; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_fw_set_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_fw_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.hwrm_fw_set_time_input = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@HWRM_FW_SET_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_fw_set_time(%struct.bnxt_softc* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.bnxt_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hwrm_fw_set_time_input, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = bitcast %struct.hwrm_fw_set_time_input* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 72, i1 false)
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %10, align 8
  %22 = load i32, i32* @HWRM_FW_SET_TIME, align 4
  %23 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %21, %struct.hwrm_fw_set_time_input* %19, i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @htole16(i32 %24)
  %26 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %19, i32 0, i32 7
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %19, i32 0, i32 6
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %19, i32 0, i32 5
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %19, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %19, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %19, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call i8* @htole16(i32 %37)
  %39 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %19, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %18, align 4
  %41 = call i8* @htole16(i32 %40)
  %42 = getelementptr inbounds %struct.hwrm_fw_set_time_input, %struct.hwrm_fw_set_time_input* %19, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load %struct.bnxt_softc*, %struct.bnxt_softc** %10, align 8
  %44 = call i32 @hwrm_send_message(%struct.bnxt_softc* %43, %struct.hwrm_fw_set_time_input* %19, i32 72)
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_fw_set_time_input*, i32) #2

declare dso_local i8* @htole16(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_fw_set_time_input*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
