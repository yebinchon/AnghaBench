; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_erase_dir_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_erase_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.hwrm_nvm_erase_dir_entry_input = type { i32, i32 }

@HWRM_NVM_ERASE_DIR_ENTRY = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_erase_dir_entry(%struct.bnxt_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwrm_nvm_erase_dir_entry_input, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.hwrm_nvm_erase_dir_entry_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %10 = load i32, i32* @HWRM_NVM_ERASE_DIR_ENTRY, align 4
  %11 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %9, %struct.hwrm_nvm_erase_dir_entry_input* %5, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @htole16(i32 %12)
  %14 = getelementptr inbounds %struct.hwrm_nvm_erase_dir_entry_input, %struct.hwrm_nvm_erase_dir_entry_input* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %16 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %15)
  %17 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @BNXT_NVM_TIMEO, align 4
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %24 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %23, %struct.hwrm_nvm_erase_dir_entry_input* %5, i32 8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %29 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %28)
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_erase_dir_entry_input*, i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_erase_dir_entry_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
