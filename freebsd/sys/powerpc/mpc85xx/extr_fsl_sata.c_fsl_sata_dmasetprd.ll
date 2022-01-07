; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_dmasetprd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_dmasetprd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.fsl_sata_slot = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.fsl_sata_channel* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.fsl_sata_channel = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.fsl_sata_cmd_tab = type { %struct.fsl_sata_dma_prd* }
%struct.fsl_sata_dma_prd = type { i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"DMA load error %d\0A\00", align 1
@FSL_SATA_ERR_INVALID = common dso_local global i32 0, align 4
@FSL_SATA_SG_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"too many DMA segment entries\0A\00", align 1
@FSL_SATA_PRD_EXT_INDEX = common dso_local global i32 0, align 4
@FSL_SATA_PRD_MAX_DIRECT = common dso_local global i32 0, align 4
@FSL_SATA_PRD_SNOOP = common dso_local global i32 0, align 4
@FSL_SATA_PRD_EXT = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_11__*, i32, i32)* @fsl_sata_dmasetprd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_dmasetprd(i8* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsl_sata_slot*, align 8
  %10 = alloca %struct.fsl_sata_channel*, align 8
  %11 = alloca %struct.fsl_sata_cmd_tab*, align 8
  %12 = alloca %struct.fsl_sata_dma_prd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.fsl_sata_slot*
  store %struct.fsl_sata_slot* %18, %struct.fsl_sata_slot** %9, align 8
  %19 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %9, align 8
  %20 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %19, i32 0, i32 3
  %21 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %20, align 8
  store %struct.fsl_sata_channel* %21, %struct.fsl_sata_channel** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %10, align 8
  %26 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %9, align 8
  %31 = load i32, i32* @FSL_SATA_ERR_INVALID, align 4
  %32 = call i32 @fsl_sata_end_transaction(%struct.fsl_sata_slot* %30, i32 %31)
  br label %170

33:                                               ; preds = %4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FSL_SATA_SG_ENTRIES, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp sle i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %10, align 8
  %41 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %9, align 8
  %42 = call %struct.fsl_sata_cmd_tab* @FSL_SATA_CTP(%struct.fsl_sata_channel* %40, %struct.fsl_sata_slot* %41)
  store %struct.fsl_sata_cmd_tab* %42, %struct.fsl_sata_cmd_tab** %11, align 8
  %43 = load %struct.fsl_sata_cmd_tab*, %struct.fsl_sata_cmd_tab** %11, align 8
  %44 = getelementptr inbounds %struct.fsl_sata_cmd_tab, %struct.fsl_sata_cmd_tab* %43, i32 0, i32 0
  %45 = load %struct.fsl_sata_dma_prd*, %struct.fsl_sata_dma_prd** %44, align 8
  %46 = getelementptr inbounds %struct.fsl_sata_dma_prd, %struct.fsl_sata_dma_prd* %45, i64 0
  store %struct.fsl_sata_dma_prd* %46, %struct.fsl_sata_dma_prd** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %118, %33
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %123

51:                                               ; preds = %47
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @FSL_SATA_PRD_EXT_INDEX, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i32, i32* @FSL_SATA_PRD_MAX_DIRECT, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %10, align 8
  %61 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %9, align 8
  %62 = call i32 @FSL_SATA_CTP_BUS(%struct.fsl_sata_channel* %60, %struct.fsl_sata_slot* %61)
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @FSL_SATA_PRD_OFFSET(i32 %64)
  %66 = add nsw i32 %62, %65
  %67 = call i8* @htole32(i32 %66)
  %68 = load %struct.fsl_sata_dma_prd*, %struct.fsl_sata_dma_prd** %12, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.fsl_sata_dma_prd, %struct.fsl_sata_dma_prd* %68, i64 %70
  %72 = getelementptr inbounds %struct.fsl_sata_dma_prd, %struct.fsl_sata_dma_prd* %71, i32 0, i32 1
  store i8* %67, i8** %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %59, %55, %51
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @roundup2(i32 %82, i32 4)
  store i32 %83, i32* %15, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @htole32(i32 %89)
  %91 = load %struct.fsl_sata_dma_prd*, %struct.fsl_sata_dma_prd** %12, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.fsl_sata_dma_prd, %struct.fsl_sata_dma_prd* %91, i64 %93
  %95 = getelementptr inbounds %struct.fsl_sata_dma_prd, %struct.fsl_sata_dma_prd* %94, i32 0, i32 1
  store i8* %90, i8** %95, align 8
  %96 = load i32, i32* @FSL_SATA_PRD_SNOOP, align 4
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %96, %97
  %99 = call i8* @htole32(i32 %98)
  %100 = load %struct.fsl_sata_dma_prd*, %struct.fsl_sata_dma_prd** %12, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.fsl_sata_dma_prd, %struct.fsl_sata_dma_prd* %100, i64 %102
  %104 = getelementptr inbounds %struct.fsl_sata_dma_prd, %struct.fsl_sata_dma_prd* %103, i32 0, i32 0
  store i8* %99, i8** %104, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %9, align 8
  %107 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @FSL_SATA_PRD_MAX_DIRECT, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %75
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %113, %75
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %47

123:                                              ; preds = %47
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %9, align 8
  %126 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @FSL_SATA_PRD_MAX_DIRECT, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %123
  %132 = load i32, i32* @FSL_SATA_PRD_SNOOP, align 4
  %133 = load i32, i32* @FSL_SATA_PRD_EXT, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %16, align 4
  %136 = or i32 %134, %135
  %137 = call i8* @htole32(i32 %136)
  %138 = load %struct.fsl_sata_dma_prd*, %struct.fsl_sata_dma_prd** %12, align 8
  %139 = load i32, i32* @FSL_SATA_PRD_EXT_INDEX, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.fsl_sata_dma_prd, %struct.fsl_sata_dma_prd* %138, i64 %140
  %142 = getelementptr inbounds %struct.fsl_sata_dma_prd, %struct.fsl_sata_dma_prd* %141, i32 0, i32 0
  store i8* %137, i8** %142, align 8
  br label %143

143:                                              ; preds = %131, %123
  %144 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %10, align 8
  %145 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %9, align 8
  %149 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %9, align 8
  %153 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %152, i32 0, i32 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CAM_DIR_IN, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %143
  %162 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  br label %165

163:                                              ; preds = %143
  %164 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = call i32 @bus_dmamap_sync(i32 %147, i32 %151, i32 %166)
  %168 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %9, align 8
  %169 = call i32 @fsl_sata_execute_transaction(%struct.fsl_sata_slot* %168)
  br label %170

170:                                              ; preds = %165, %24
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @fsl_sata_end_transaction(%struct.fsl_sata_slot*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.fsl_sata_cmd_tab* @FSL_SATA_CTP(%struct.fsl_sata_channel*, %struct.fsl_sata_slot*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @FSL_SATA_CTP_BUS(%struct.fsl_sata_channel*, %struct.fsl_sata_slot*) #1

declare dso_local i32 @FSL_SATA_PRD_OFFSET(i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @fsl_sata_execute_transaction(%struct.fsl_sata_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
