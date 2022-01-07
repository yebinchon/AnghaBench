; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_get_dir_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_get_dir_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_nvm_get_dir_info_input = type { i32 }
%struct.hwrm_nvm_get_dir_info_output = type { i32, i32 }

@HWRM_NVM_GET_DIR_INFO = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_get_dir_info(%struct.bnxt_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hwrm_nvm_get_dir_info_input, align 4
  %8 = alloca %struct.hwrm_nvm_get_dir_info_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = bitcast %struct.hwrm_nvm_get_dir_info_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.hwrm_nvm_get_dir_info_output*
  store %struct.hwrm_nvm_get_dir_info_output* %17, %struct.hwrm_nvm_get_dir_info_output** %8, align 8
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %19 = load i32, i32* @HWRM_NVM_GET_DIR_INFO, align 4
  %20 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %18, %struct.hwrm_nvm_get_dir_info_input* %7, i32 %19)
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %22 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %21)
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @BNXT_NVM_TIMEO, align 4
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %30 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %29, %struct.hwrm_nvm_get_dir_info_input* %7, i32 4)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %56

37:                                               ; preds = %3
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.hwrm_nvm_get_dir_info_output*, %struct.hwrm_nvm_get_dir_info_output** %8, align 8
  %42 = getelementptr inbounds %struct.hwrm_nvm_get_dir_info_output, %struct.hwrm_nvm_get_dir_info_output* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32toh(i32 %43)
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32*, i32** %6, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.hwrm_nvm_get_dir_info_output*, %struct.hwrm_nvm_get_dir_info_output** %8, align 8
  %51 = getelementptr inbounds %struct.hwrm_nvm_get_dir_info_output, %struct.hwrm_nvm_get_dir_info_output* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32toh(i32 %52)
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %58 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %57)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_get_dir_info_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_get_dir_info_input*, i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
