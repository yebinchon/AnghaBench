; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i64 }
%struct.iflib_dma_info = type { i64, i32, i32, i32 }
%struct.hwrm_nvm_read_input = type { i8*, i8*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HWRM_NVM_READ = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_read(%struct.bnxt_softc* %0, i32 %1, i64 %2, i64 %3, %struct.iflib_dma_info* %4) #0 {
  %6 = alloca %struct.bnxt_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iflib_dma_info*, align 8
  %11 = alloca %struct.hwrm_nvm_read_input, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.iflib_dma_info* %4, %struct.iflib_dma_info** %10, align 8
  %14 = bitcast %struct.hwrm_nvm_read_input* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.iflib_dma_info*, %struct.iflib_dma_info** %10, align 8
  %17 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %12, align 4
  br label %67

22:                                               ; preds = %5
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %24 = load i32, i32* @HWRM_NVM_READ, align 4
  %25 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %23, %struct.hwrm_nvm_read_input* %11, i32 %24)
  %26 = load %struct.iflib_dma_info*, %struct.iflib_dma_info** %10, align 8
  %27 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @htole64(i32 %28)
  %30 = getelementptr inbounds %struct.hwrm_nvm_read_input, %struct.hwrm_nvm_read_input* %11, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @htole16(i32 %31)
  %33 = getelementptr inbounds %struct.hwrm_nvm_read_input, %struct.hwrm_nvm_read_input* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i8* @htole32(i64 %34)
  %36 = getelementptr inbounds %struct.hwrm_nvm_read_input, %struct.hwrm_nvm_read_input* %11, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i8* @htole32(i64 %37)
  %39 = getelementptr inbounds %struct.hwrm_nvm_read_input, %struct.hwrm_nvm_read_input* %11, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %41 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %40)
  %42 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %43 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* @BNXT_NVM_TIMEO, align 8
  %46 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %47 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %49 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %48, %struct.hwrm_nvm_read_input* %11, i32 32)
  store i32 %49, i32* %12, align 4
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %52 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %54 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %22
  br label %67

58:                                               ; preds = %22
  %59 = load %struct.iflib_dma_info*, %struct.iflib_dma_info** %10, align 8
  %60 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iflib_dma_info*, %struct.iflib_dma_info** %10, align 8
  %63 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %66 = call i32 @bus_dmamap_sync(i32 %61, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %57, %20
  %68 = load i32, i32* %12, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_read_input*, i32) #2

declare dso_local i32 @htole64(i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i8* @htole32(i64) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_read_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
