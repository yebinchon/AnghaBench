; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_stream_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { i64**, %struct.hda_stream_desc* }
%struct.hda_stream_desc = type { i32, i32, i64, i64, i64, i64, %struct.hda_bdle_desc* }
%struct.hda_bdle_desc = type { i32, i32, i8* }
%struct.hda_bdle = type { i32, i32, i32, i32 }

@HDAC_SDLVI = common dso_local global i32 0, align 4
@HDAC_SDBDPL = common dso_local global i32 0, align 4
@HDAC_SDBDPU = common dso_local global i32 0, align 4
@HDA_BDL_MAX_LEN = common dso_local global i32 0, align 4
@HDA_BDL_ENTRY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Fail to get the guest virtual address\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"stream: 0x%x bdl_cnt: 0x%x bdl_paddr: 0x%lx\0A\00", align 1
@HDA_DMA_ACCESS_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"bdle: 0x%x bdle_sz: 0x%x\0A\00", align 1
@HDAC_SDCTL0 = common dso_local global i32 0, align 4
@HDA_ISS_NO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"strm: 0x%x, dir: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_softc*, i64)* @hda_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_stream_start(%struct.hda_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hda_stream_desc*, align 8
  %7 = alloca %struct.hda_bdle_desc*, align 8
  %8 = alloca %struct.hda_bdle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.hda_softc* %0, %struct.hda_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %25 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %26 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %25, i32 0, i32 1
  %27 = load %struct.hda_stream_desc*, %struct.hda_stream_desc** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.hda_stream_desc, %struct.hda_stream_desc* %27, i64 %28
  store %struct.hda_stream_desc* %29, %struct.hda_stream_desc** %6, align 8
  store %struct.hda_bdle_desc* null, %struct.hda_bdle_desc** %7, align 8
  store %struct.hda_bdle* null, %struct.hda_bdle** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @hda_get_offset_stream(i64 %30)
  store i32 %31, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %32 = load %struct.hda_stream_desc*, %struct.hda_stream_desc** %6, align 8
  %33 = getelementptr inbounds %struct.hda_stream_desc, %struct.hda_stream_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* @HDAC_SDLVI, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* @HDAC_SDBDPL, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* @HDAC_SDBDPU, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %49, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @HDA_BDL_MAX_LEN, align 4
  %58 = icmp sle i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 %62, 32
  %64 = or i32 %61, %63
  store i32 %64, i32* %13, align 4
  %65 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @HDA_BDL_ENTRY_LEN, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %67, %68
  %70 = call i8* @hda_dma_get_vaddr(%struct.hda_softc* %65, i32 %66, i32 %69)
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %2
  %74 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %190

75:                                               ; preds = %2
  %76 = load i64, i64* %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.hda_stream_desc*, %struct.hda_stream_desc** %6, align 8
  %82 = getelementptr inbounds %struct.hda_stream_desc, %struct.hda_stream_desc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i8*, i8** %14, align 8
  %84 = bitcast i8* %83 to %struct.hda_bdle*
  store %struct.hda_bdle* %84, %struct.hda_bdle** %8, align 8
  store i32 0, i32* %24, align 4
  br label %85

85:                                               ; preds = %139, %75
  %86 = load i32, i32* %24, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %144

89:                                               ; preds = %85
  %90 = load %struct.hda_bdle*, %struct.hda_bdle** %8, align 8
  %91 = getelementptr inbounds %struct.hda_bdle, %struct.hda_bdle* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @HDA_DMA_ACCESS_LEN, align 4
  %95 = srem i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.hda_bdle*, %struct.hda_bdle** %8, align 8
  %101 = getelementptr inbounds %struct.hda_bdle, %struct.hda_bdle* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %16, align 4
  %103 = load %struct.hda_bdle*, %struct.hda_bdle** %8, align 8
  %104 = getelementptr inbounds %struct.hda_bdle, %struct.hda_bdle* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %17, align 4
  %108 = shl i32 %107, 32
  %109 = or i32 %106, %108
  store i32 %109, i32* %18, align 4
  %110 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i8* @hda_dma_get_vaddr(%struct.hda_softc* %110, i32 %111, i32 %112)
  store i8* %113, i8** %19, align 8
  %114 = load i8*, i8** %19, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %89
  %117 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %190

118:                                              ; preds = %89
  %119 = load %struct.hda_stream_desc*, %struct.hda_stream_desc** %6, align 8
  %120 = getelementptr inbounds %struct.hda_stream_desc, %struct.hda_stream_desc* %119, i32 0, i32 6
  %121 = load %struct.hda_bdle_desc*, %struct.hda_bdle_desc** %120, align 8
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.hda_bdle_desc, %struct.hda_bdle_desc* %121, i64 %123
  store %struct.hda_bdle_desc* %124, %struct.hda_bdle_desc** %7, align 8
  %125 = load i8*, i8** %19, align 8
  %126 = load %struct.hda_bdle_desc*, %struct.hda_bdle_desc** %7, align 8
  %127 = getelementptr inbounds %struct.hda_bdle_desc, %struct.hda_bdle_desc* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.hda_bdle_desc*, %struct.hda_bdle_desc** %7, align 8
  %130 = getelementptr inbounds %struct.hda_bdle_desc, %struct.hda_bdle_desc* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.hda_bdle*, %struct.hda_bdle** %8, align 8
  %132 = getelementptr inbounds %struct.hda_bdle, %struct.hda_bdle* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hda_bdle_desc*, %struct.hda_bdle_desc** %7, align 8
  %135 = getelementptr inbounds %struct.hda_bdle_desc, %struct.hda_bdle_desc* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %118
  %140 = load i32, i32* %24, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %24, align 4
  %142 = load %struct.hda_bdle*, %struct.hda_bdle** %8, align 8
  %143 = getelementptr inbounds %struct.hda_bdle, %struct.hda_bdle* %142, i32 1
  store %struct.hda_bdle* %143, %struct.hda_bdle** %8, align 8
  br label %85

144:                                              ; preds = %85
  %145 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* @HDAC_SDCTL0, align 4
  %148 = add nsw i32 %146, %147
  %149 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %145, i32 %148)
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* %21, align 4
  %151 = ashr i32 %150, 20
  %152 = and i32 %151, 15
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %22, align 8
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* @HDA_ISS_NO, align 8
  %156 = icmp uge i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %23, align 8
  %159 = load i64, i64* %22, align 8
  %160 = load i64, i64* %23, align 8
  %161 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %159, i64 %160)
  %162 = load i64, i64* %5, align 8
  %163 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %164 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %163, i32 0, i32 0
  %165 = load i64**, i64*** %164, align 8
  %166 = load i64, i64* %23, align 8
  %167 = getelementptr inbounds i64*, i64** %165, i64 %166
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* %22, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  store i64 %162, i64* %170, align 8
  %171 = load i64, i64* %22, align 8
  %172 = load %struct.hda_stream_desc*, %struct.hda_stream_desc** %6, align 8
  %173 = getelementptr inbounds %struct.hda_stream_desc, %struct.hda_stream_desc* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  %174 = load i64, i64* %23, align 8
  %175 = load %struct.hda_stream_desc*, %struct.hda_stream_desc** %6, align 8
  %176 = getelementptr inbounds %struct.hda_stream_desc, %struct.hda_stream_desc* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  %177 = load %struct.hda_stream_desc*, %struct.hda_stream_desc** %6, align 8
  %178 = getelementptr inbounds %struct.hda_stream_desc, %struct.hda_stream_desc* %177, i32 0, i32 5
  store i64 0, i64* %178, align 8
  %179 = load %struct.hda_stream_desc*, %struct.hda_stream_desc** %6, align 8
  %180 = getelementptr inbounds %struct.hda_stream_desc, %struct.hda_stream_desc* %179, i32 0, i32 4
  store i64 0, i64* %180, align 8
  %181 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %182 = load i64, i64* %5, align 8
  %183 = call i32 @hda_set_pib(%struct.hda_softc* %181, i64 %182, i32 0)
  %184 = load %struct.hda_stream_desc*, %struct.hda_stream_desc** %6, align 8
  %185 = getelementptr inbounds %struct.hda_stream_desc, %struct.hda_stream_desc* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  %186 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %187 = load i64, i64* %22, align 8
  %188 = load i64, i64* %23, align 8
  %189 = call i32 @hda_notify_codecs(%struct.hda_softc* %186, i32 1, i64 %187, i64 %188)
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %144, %116, %73
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @hda_get_offset_stream(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hda_get_reg_by_offset(%struct.hda_softc*, i32) #1

declare dso_local i8* @hda_dma_get_vaddr(%struct.hda_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @hda_set_pib(%struct.hda_softc*, i64, i32) #1

declare dso_local i32 @hda_notify_codecs(%struct.hda_softc*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
