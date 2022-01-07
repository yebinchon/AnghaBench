; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_nvm_write_input = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.hwrm_nvm_write_output = type { i32, i32 }
%struct.iflib_dma_info = type { i64, i32, i32, i32 }

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@HWRM_NVM_WRITE = common dso_local global i32 0, align 4
@HWRM_NVM_WRITE_INPUT_FLAGS_KEEP_ORIG_ACTIVE_IMG = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_write(%struct.bnxt_softc* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnxt_softc*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.hwrm_nvm_write_input, align 8
  %27 = alloca %struct.hwrm_nvm_write_output*, align 8
  %28 = alloca %struct.iflib_dma_info, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %31 = bitcast %struct.hwrm_nvm_write_input* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 72, i1 false)
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %14, align 8
  %33 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.hwrm_nvm_write_output*
  store %struct.hwrm_nvm_write_output* %37, %struct.hwrm_nvm_write_output** %27, align 8
  %38 = load i32, i32* %22, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %12
  %41 = load %struct.bnxt_softc*, %struct.bnxt_softc** %14, align 8
  %42 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %46 = call i32 @iflib_dma_alloc(i32 %43, i32 %44, %struct.iflib_dma_info* %28, i32 %45)
  store i32 %46, i32* %29, align 4
  %47 = load i32, i32* %29, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %13, align 4
  br label %167

51:                                               ; preds = %40
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i8*, i8** %15, align 8
  %56 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %28, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %22, align 4
  %59 = call i32 @copyin(i8* %55, i32 %57, i32 %58)
  store i32 %59, i32* %29, align 4
  %60 = load i32, i32* %29, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %160

63:                                               ; preds = %54
  br label %70

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %28, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* %22, align 4
  %69 = call i32 @memcpy(i32 %66, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %63
  %71 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %28, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %28, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %76 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @bus_dmamap_sync(i32 %72, i32 %74, i32 %77)
  br label %81

79:                                               ; preds = %12
  %80 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %28, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %79, %70
  %82 = load %struct.bnxt_softc*, %struct.bnxt_softc** %14, align 8
  %83 = load i32, i32* @HWRM_NVM_WRITE, align 4
  %84 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %82, %struct.hwrm_nvm_write_input* %26, i32 %83)
  %85 = getelementptr inbounds %struct.iflib_dma_info, %struct.iflib_dma_info* %28, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @htole64(i64 %86)
  %88 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %26, i32 0, i32 8
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i8* @htole16(i32 %89)
  %91 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %26, i32 0, i32 7
  store i8* %90, i8** %91, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i8* @htole16(i32 %92)
  %94 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %26, i32 0, i32 6
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* %19, align 4
  %96 = call i8* @htole16(i32 %95)
  %97 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %26, i32 0, i32 5
  store i8* %96, i8** %97, align 8
  %98 = load i32, i32* %20, align 4
  %99 = call i8* @htole16(i32 %98)
  %100 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %26, i32 0, i32 4
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* %22, align 4
  %102 = call i8* @htole32(i32 %101)
  %103 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %26, i32 0, i32 3
  store i8* %102, i8** %103, align 8
  %104 = load i32, i32* %21, align 4
  %105 = call i8* @htole16(i32 %104)
  %106 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %26, i32 0, i32 2
  store i8* %105, i8** %106, align 8
  %107 = load i32, i32* %23, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %81
  %110 = load i32, i32* @HWRM_NVM_WRITE_INPUT_FLAGS_KEEP_ORIG_ACTIVE_IMG, align 4
  %111 = call i8* @htole16(i32 %110)
  %112 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %26, i32 0, i32 1
  store i8* %111, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %81
  %114 = load i32*, i32** %24, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32*, i32** %24, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @htole32(i32 %118)
  %120 = getelementptr inbounds %struct.hwrm_nvm_write_input, %struct.hwrm_nvm_write_input* %26, i32 0, i32 0
  store i8* %119, i8** %120, align 8
  br label %121

121:                                              ; preds = %116, %113
  %122 = load %struct.bnxt_softc*, %struct.bnxt_softc** %14, align 8
  %123 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %122)
  %124 = load %struct.bnxt_softc*, %struct.bnxt_softc** %14, align 8
  %125 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %30, align 4
  %127 = load i32, i32* @BNXT_NVM_TIMEO, align 4
  %128 = load %struct.bnxt_softc*, %struct.bnxt_softc** %14, align 8
  %129 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.bnxt_softc*, %struct.bnxt_softc** %14, align 8
  %131 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %130, %struct.hwrm_nvm_write_input* %26, i32 72)
  store i32 %131, i32* %29, align 4
  %132 = load i32, i32* %30, align 4
  %133 = load %struct.bnxt_softc*, %struct.bnxt_softc** %14, align 8
  %134 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %29, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %121
  br label %157

138:                                              ; preds = %121
  %139 = load i32*, i32** %24, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load %struct.hwrm_nvm_write_output*, %struct.hwrm_nvm_write_output** %27, align 8
  %143 = getelementptr inbounds %struct.hwrm_nvm_write_output, %struct.hwrm_nvm_write_output* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @le32toh(i32 %144)
  %146 = load i32*, i32** %24, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %138
  %148 = load i32*, i32** %25, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.hwrm_nvm_write_output*, %struct.hwrm_nvm_write_output** %27, align 8
  %152 = getelementptr inbounds %struct.hwrm_nvm_write_output, %struct.hwrm_nvm_write_output* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le16toh(i32 %153)
  %155 = load i32*, i32** %25, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %150, %147
  br label %157

157:                                              ; preds = %156, %137
  %158 = load %struct.bnxt_softc*, %struct.bnxt_softc** %14, align 8
  %159 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %158)
  br label %160

160:                                              ; preds = %157, %62
  %161 = load i32, i32* %22, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 @iflib_dma_free(%struct.iflib_dma_info* %28)
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i32, i32* %29, align 4
  store i32 %166, i32* %13, align 4
  br label %167

167:                                              ; preds = %165, %49
  %168 = load i32, i32* %13, align 4
  ret i32 %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iflib_dma_alloc(i32, i32, %struct.iflib_dma_info*, i32) #2

declare dso_local i32 @copyin(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_write_input*, i32) #2

declare dso_local i32 @htole64(i64) #2

declare dso_local i8* @htole16(i32) #2

declare dso_local i8* @htole32(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_write_input*, i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @le16toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @iflib_dma_free(%struct.iflib_dma_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
