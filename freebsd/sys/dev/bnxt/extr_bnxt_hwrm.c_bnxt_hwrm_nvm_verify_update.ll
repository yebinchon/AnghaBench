; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_verify_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_verify_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.hwrm_nvm_verify_update_input = type { i8*, i8*, i8*, i32 }

@HWRM_NVM_VERIFY_UPDATE = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_verify_update(%struct.bnxt_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnxt_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hwrm_nvm_verify_update_input, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast %struct.hwrm_nvm_verify_update_input* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %14 = load i32, i32* @HWRM_NVM_VERIFY_UPDATE, align 4
  %15 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %13, %struct.hwrm_nvm_verify_update_input* %9, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @htole16(i32 %16)
  %18 = getelementptr inbounds %struct.hwrm_nvm_verify_update_input, %struct.hwrm_nvm_verify_update_input* %9, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @htole16(i32 %19)
  %21 = getelementptr inbounds %struct.hwrm_nvm_verify_update_input, %struct.hwrm_nvm_verify_update_input* %9, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @htole16(i32 %22)
  %24 = getelementptr inbounds %struct.hwrm_nvm_verify_update_input, %struct.hwrm_nvm_verify_update_input* %9, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %26 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %25)
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %28 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @BNXT_NVM_TIMEO, align 4
  %31 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %32 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %34 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %33, %struct.hwrm_nvm_verify_update_input* %9, i32 32)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %37 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %39 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %38)
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_verify_update_input*, i32) #2

declare dso_local i8* @htole16(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_verify_update_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
