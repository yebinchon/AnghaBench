; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_dmasetprd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_dmasetprd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.siis_slot = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.siis_channel = type { %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.siis_cmd = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.siis_dma_prd* }
%struct.siis_dma_prd = type { i8*, i8*, i32 }
%struct.TYPE_10__ = type { %struct.siis_dma_prd* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DMA load error\0A\00", align 1
@SIIS_ERR_INVALID = common dso_local global i32 0, align 4
@SIIS_SG_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"too many DMA segment entries\0A\00", align 1
@SIIS_CT_OFFSET = common dso_local global i64 0, align 8
@SIIS_CT_SIZE = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@SIIS_PRD_TRM = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_17__*, i32, i32)* @siis_dmasetprd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_dmasetprd(i8* %0, %struct.TYPE_17__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.siis_slot*, align 8
  %10 = alloca %struct.siis_channel*, align 8
  %11 = alloca %struct.siis_cmd*, align 8
  %12 = alloca %struct.siis_dma_prd*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.siis_slot*
  store %struct.siis_slot* %15, %struct.siis_slot** %9, align 8
  %16 = load %struct.siis_slot*, %struct.siis_slot** %9, align 8
  %17 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.siis_channel* @device_get_softc(i32 %18)
  store %struct.siis_channel* %19, %struct.siis_channel** %10, align 8
  %20 = load %struct.siis_channel*, %struct.siis_channel** %10, align 8
  %21 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %20, i32 0, i32 3
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @mtx_assert(i32* %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %4
  %27 = load %struct.siis_slot*, %struct.siis_slot** %9, align 8
  %28 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.siis_channel*, %struct.siis_channel** %10, align 8
  %32 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load %struct.siis_channel*, %struct.siis_channel** %10, align 8
  %37 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @xpt_freeze_simq(i32 %38, i32 1)
  br label %40

40:                                               ; preds = %35, %26
  %41 = load %struct.siis_slot*, %struct.siis_slot** %9, align 8
  %42 = load i32, i32* @SIIS_ERR_INVALID, align 4
  %43 = call i32 @siis_end_transaction(%struct.siis_slot* %41, i32 %42)
  br label %167

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SIIS_SG_ENTRIES, align 4
  %47 = icmp sle i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @KASSERT(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.siis_slot*, %struct.siis_slot** %9, align 8
  %52 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %164

56:                                               ; preds = %44
  %57 = load %struct.siis_channel*, %struct.siis_channel** %10, align 8
  %58 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SIIS_CT_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @SIIS_CT_SIZE, align 4
  %64 = load %struct.siis_slot*, %struct.siis_slot** %9, align 8
  %65 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %62, %68
  %70 = inttoptr i64 %69 to %struct.siis_cmd*
  store %struct.siis_cmd* %70, %struct.siis_cmd** %11, align 8
  %71 = load %struct.siis_slot*, %struct.siis_slot** %9, align 8
  %72 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %71, i32 0, i32 1
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @XPT_ATA_IO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %56
  %80 = load %struct.siis_cmd*, %struct.siis_cmd** %11, align 8
  %81 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.siis_dma_prd*, %struct.siis_dma_prd** %83, align 8
  %85 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %84, i64 0
  store %struct.siis_dma_prd* %85, %struct.siis_dma_prd** %12, align 8
  br label %93

86:                                               ; preds = %56
  %87 = load %struct.siis_cmd*, %struct.siis_cmd** %11, align 8
  %88 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.siis_dma_prd*, %struct.siis_dma_prd** %90, align 8
  %92 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %91, i64 0
  store %struct.siis_dma_prd* %92, %struct.siis_dma_prd** %12, align 8
  br label %93

93:                                               ; preds = %86, %79
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %128, %93
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %94
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @htole64(i32 %104)
  %106 = load %struct.siis_dma_prd*, %struct.siis_dma_prd** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %106, i64 %108
  %110 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %109, i32 0, i32 2
  store i32 %105, i32* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @htole32(i32 %116)
  %118 = load %struct.siis_dma_prd*, %struct.siis_dma_prd** %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %118, i64 %120
  %122 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %121, i32 0, i32 1
  store i8* %117, i8** %122, align 8
  %123 = load %struct.siis_dma_prd*, %struct.siis_dma_prd** %12, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %123, i64 %125
  %127 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %126, i32 0, i32 0
  store i8* null, i8** %127, align 8
  br label %128

128:                                              ; preds = %98
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %94

131:                                              ; preds = %94
  %132 = load i32, i32* @SIIS_PRD_TRM, align 4
  %133 = call i8* @htole32(i32 %132)
  %134 = load %struct.siis_dma_prd*, %struct.siis_dma_prd** %12, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %134, i64 %137
  %139 = getelementptr inbounds %struct.siis_dma_prd, %struct.siis_dma_prd* %138, i32 0, i32 0
  store i8* %133, i8** %139, align 8
  %140 = load %struct.siis_channel*, %struct.siis_channel** %10, align 8
  %141 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.siis_slot*, %struct.siis_slot** %9, align 8
  %145 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.siis_slot*, %struct.siis_slot** %9, align 8
  %149 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %148, i32 0, i32 1
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CAM_DIR_IN, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %131
  %158 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  br label %161

159:                                              ; preds = %131
  %160 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = call i32 @bus_dmamap_sync(i32 %143, i32 %147, i32 %162)
  br label %164

164:                                              ; preds = %161, %44
  %165 = load %struct.siis_slot*, %struct.siis_slot** %9, align 8
  %166 = call i32 @siis_execute_transaction(%struct.siis_slot* %165)
  br label %167

167:                                              ; preds = %164, %40
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @siis_end_transaction(%struct.siis_slot*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @siis_execute_transaction(%struct.siis_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
