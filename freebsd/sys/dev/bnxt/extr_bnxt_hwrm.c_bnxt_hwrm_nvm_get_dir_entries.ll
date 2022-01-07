; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_get_dir_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_get_dir_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }
%struct.iflib_dma_info = type { i32, i32, i32, i32 }
%struct.hwrm_nvm_get_dir_entries_input = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HWRM_NVM_GET_DIR_ENTRIES = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_get_dir_entries(%struct.bnxt_softc* %0, i32* %1, i32* %2, %struct.iflib_dma_info* %3) #0 {
  %5 = alloca %struct.bnxt_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iflib_dma_info*, align 8
  %9 = alloca %struct.hwrm_nvm_get_dir_entries_input, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.iflib_dma_info* %3, %struct.iflib_dma_info** %8, align 8
  %14 = bitcast %struct.hwrm_nvm_get_dir_entries_input* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32* %10, i32** %6, align 8
  br label %18

18:                                               ; preds = %17, %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32* %11, i32** %7, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @bnxt_hwrm_nvm_get_dir_info(%struct.bnxt_softc* %23, i32* %24, i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %78

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %32, %34
  %36 = load %struct.iflib_dma_info*, %struct.iflib_dma_info** %8, align 8
  %37 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %12, align 4
  br label %78

42:                                               ; preds = %30
  %43 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %44 = load i32, i32* @HWRM_NVM_GET_DIR_ENTRIES, align 4
  %45 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %43, %struct.hwrm_nvm_get_dir_entries_input* %9, i32 %44)
  %46 = load %struct.iflib_dma_info*, %struct.iflib_dma_info** %8, align 8
  %47 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @htole64(i32 %48)
  %50 = getelementptr inbounds %struct.hwrm_nvm_get_dir_entries_input, %struct.hwrm_nvm_get_dir_entries_input* %9, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %52 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %51)
  %53 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %54 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @BNXT_NVM_TIMEO, align 4
  %57 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %58 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %60 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %59, %struct.hwrm_nvm_get_dir_entries_input* %9, i32 8)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %63 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.bnxt_softc*, %struct.bnxt_softc** %5, align 8
  %65 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %64)
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %42
  br label %78

69:                                               ; preds = %42
  %70 = load %struct.iflib_dma_info*, %struct.iflib_dma_info** %8, align 8
  %71 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iflib_dma_info*, %struct.iflib_dma_info** %8, align 8
  %74 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %77 = call i32 @bus_dmamap_sync(i32 %72, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %68, %40, %29
  %79 = load i32, i32* %12, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_nvm_get_dir_info(%struct.bnxt_softc*, i32*, i32*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_get_dir_entries_input*, i32) #2

declare dso_local i32 @htole64(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_get_dir_entries_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
