; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32 }
%struct.hwrm_nvm_modify_input = type { i8*, i8*, i32, i32, i32 }
%struct.iflib_dma_info = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@HWRM_NVM_MODIFY = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_modify(%struct.bnxt_softc* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hwrm_nvm_modify_input, align 8
  %15 = alloca %struct.iflib_dma_info, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = bitcast %struct.hwrm_nvm_modify_input* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = load i32, i32* %13, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %6
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %7, align 4
  br label %99

26:                                               ; preds = %21
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %28 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %32 = call i32 @iflib_dma_alloc(i32 %29, i32 %30, %struct.iflib_dma_info* %15, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %7, align 4
  br label %99

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %15, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @copyin(i8* %41, i32 %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %96

49:                                               ; preds = %40
  br label %56

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %15, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @memcpy(i32 %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %49
  %57 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %15, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %15, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %62 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @bus_dmamap_sync(i32 %58, i32 %60, i32 %63)
  %65 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %66 = load i32, i32* @HWRM_NVM_MODIFY, align 4
  %67 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %65, %struct.hwrm_nvm_modify_input* %14, i32 %66)
  %68 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %15, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @htole64(i32 %69)
  %71 = getelementptr inbounds %struct.hwrm_nvm_modify_input, %struct.hwrm_nvm_modify_input* %14, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @htole16(i32 %72)
  %74 = getelementptr inbounds %struct.hwrm_nvm_modify_input, %struct.hwrm_nvm_modify_input* %14, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i8* @htole32(i32 %75)
  %77 = getelementptr inbounds %struct.hwrm_nvm_modify_input, %struct.hwrm_nvm_modify_input* %14, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i8* @htole32(i32 %78)
  %80 = getelementptr inbounds %struct.hwrm_nvm_modify_input, %struct.hwrm_nvm_modify_input* %14, i32 0, i32 0
  store i8* %79, i8** %80, align 8
  %81 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %82 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %81)
  %83 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %84 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* @BNXT_NVM_TIMEO, align 4
  %87 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %88 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %90 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %89, %struct.hwrm_nvm_modify_input* %14, i32 32)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %93 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %95 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %94)
  br label %96

96:                                               ; preds = %56, %48
  %97 = call i32 @iflib_dma_free(%struct.iflib_dma_info* %15)
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %35, %24
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iflib_dma_alloc(i32, i32, %struct.iflib_dma_info*, i32) #2

declare dso_local i32 @copyin(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_modify_input*, i32) #2

declare dso_local i32 @htole64(i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i8* @htole32(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_modify_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @iflib_dma_free(%struct.iflib_dma_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
