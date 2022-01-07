; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_dmasetprd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_dmasetprd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.ahci_slot = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.ahci_channel* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ahci_channel = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.ahci_cmd_tab = type { %struct.ahci_dma_prd* }
%struct.ahci_dma_prd = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"DMA load error\0A\00", align 1
@AHCI_ERR_INVALID = common dso_local global i32 0, align 4
@AHCI_SG_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"too many DMA segment entries\0A\00", align 1
@AHCI_CT_OFFSET = common dso_local global i64 0, align 8
@AHCI_CT_SIZE = common dso_local global i32 0, align 4
@AHCI_PRD_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_11__*, i32, i32)* @ahci_dmasetprd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_dmasetprd(i8* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahci_slot*, align 8
  %10 = alloca %struct.ahci_channel*, align 8
  %11 = alloca %struct.ahci_cmd_tab*, align 8
  %12 = alloca %struct.ahci_dma_prd*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.ahci_slot*
  store %struct.ahci_slot* %15, %struct.ahci_slot** %9, align 8
  %16 = load %struct.ahci_slot*, %struct.ahci_slot** %9, align 8
  %17 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %16, i32 0, i32 3
  %18 = load %struct.ahci_channel*, %struct.ahci_channel** %17, align 8
  store %struct.ahci_channel* %18, %struct.ahci_channel** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.ahci_channel*, %struct.ahci_channel** %10, align 8
  %23 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ahci_slot*, %struct.ahci_slot** %9, align 8
  %27 = load i32, i32* @AHCI_ERR_INVALID, align 4
  %28 = call i32 @ahci_end_transaction(%struct.ahci_slot* %26, i32 %27)
  br label %119

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AHCI_SG_ENTRIES, align 4
  %32 = icmp sle i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ahci_channel*, %struct.ahci_channel** %10, align 8
  %36 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AHCI_CT_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* @AHCI_CT_SIZE, align 4
  %42 = load %struct.ahci_slot*, %struct.ahci_slot** %9, align 8
  %43 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %40, %46
  %48 = inttoptr i64 %47 to %struct.ahci_cmd_tab*
  store %struct.ahci_cmd_tab* %48, %struct.ahci_cmd_tab** %11, align 8
  %49 = load %struct.ahci_cmd_tab*, %struct.ahci_cmd_tab** %11, align 8
  %50 = getelementptr inbounds %struct.ahci_cmd_tab, %struct.ahci_cmd_tab* %49, i32 0, i32 0
  %51 = load %struct.ahci_dma_prd*, %struct.ahci_dma_prd** %50, align 8
  %52 = getelementptr inbounds %struct.ahci_dma_prd, %struct.ahci_dma_prd* %51, i64 0
  store %struct.ahci_dma_prd* %52, %struct.ahci_dma_prd** %12, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %85, %29
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %53
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @htole64(i32 %63)
  %65 = load %struct.ahci_dma_prd*, %struct.ahci_dma_prd** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ahci_dma_prd, %struct.ahci_dma_prd* %65, i64 %67
  %69 = getelementptr inbounds %struct.ahci_dma_prd, %struct.ahci_dma_prd* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @AHCI_PRD_MASK, align 4
  %78 = and i32 %76, %77
  %79 = call i32 @htole32(i32 %78)
  %80 = load %struct.ahci_dma_prd*, %struct.ahci_dma_prd** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ahci_dma_prd, %struct.ahci_dma_prd* %80, i64 %82
  %84 = getelementptr inbounds %struct.ahci_dma_prd, %struct.ahci_dma_prd* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %57
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %53

88:                                               ; preds = %53
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.ahci_slot*, %struct.ahci_slot** %9, align 8
  %91 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.ahci_channel*, %struct.ahci_channel** %10, align 8
  %94 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ahci_slot*, %struct.ahci_slot** %9, align 8
  %98 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ahci_slot*, %struct.ahci_slot** %9, align 8
  %102 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CAM_DIR_IN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %88
  %111 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  br label %114

112:                                              ; preds = %88
  %113 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = call i32 @bus_dmamap_sync(i32 %96, i32 %100, i32 %115)
  %117 = load %struct.ahci_slot*, %struct.ahci_slot** %9, align 8
  %118 = call i32 @ahci_execute_transaction(%struct.ahci_slot* %117)
  br label %119

119:                                              ; preds = %114, %21
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ahci_end_transaction(%struct.ahci_slot*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ahci_execute_transaction(%struct.ahci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
