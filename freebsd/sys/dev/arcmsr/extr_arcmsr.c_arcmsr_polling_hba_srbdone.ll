; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hba_srbdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hba_srbdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32, i64, i32, i32 }
%struct.CommandControlBlock = type { i64, %struct.TYPE_4__*, %struct.AdapterControlBlock* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@HBA_MessageUnit = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@outbound_queueport = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_ABORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"arcmsr%d: scsi id=%d lun=%jx srb='%p'poll command abort successfully \0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"arcmsr%d: polling get an illegal srb command done srb='%p'srboutstandingcount=%d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, %struct.CommandControlBlock*)* @arcmsr_polling_hba_srbdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_polling_hba_srbdone(%struct.AdapterControlBlock* %0, %struct.CommandControlBlock* %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.CommandControlBlock*, align 8
  %5 = alloca %struct.CommandControlBlock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store %struct.CommandControlBlock* %1, %struct.CommandControlBlock** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %52, %2
  %12 = load i32, i32* %9, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @HBA_MessageUnit, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CHIP_REG_READ32(i32 %14, i32 0, i32 %15)
  %17 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %18 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @HBA_MessageUnit, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @CHIP_REG_WRITE32(i32 %21, i32 0, i32 %22, i32 %23)
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %29 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %32 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @bus_dmamap_sync(i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %11, %94, %123, %132
  %36 = load i32, i32* @HBA_MessageUnit, align 4
  %37 = load i32, i32* @outbound_queueport, align 4
  %38 = call i32 @CHIP_REG_READ32(i32 %36, i32 0, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %137

44:                                               ; preds = %40
  %45 = call i32 @UDELAY(i32 25000)
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 100
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %50 = icmp ne %struct.CommandControlBlock* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %137

52:                                               ; preds = %48, %44
  br label %11

53:                                               ; preds = %35
  %54 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %55 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 5
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = inttoptr i64 %60 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %61, %struct.CommandControlBlock** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE0, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @TRUE, align 4
  br label %70

68:                                               ; preds = %53
  %69 = load i32, i32* @FALSE, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %10, align 4
  %72 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %73 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %74 = icmp eq %struct.CommandControlBlock* %72, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  store i32 %76, i32* %8, align 4
  %77 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %78 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %77, i32 0, i32 2
  %79 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %78, align 8
  %80 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %81 = icmp ne %struct.AdapterControlBlock* %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %70
  %83 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %84 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ARCMSR_SRB_START, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %82, %70
  %89 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %90 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ARCMSR_SRB_ABORTED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %88
  %95 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %96 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %99 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %105 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %112 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %103, i32 %110, %struct.CommandControlBlock* %111)
  %113 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %114 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %115 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %113
  store i32 %120, i32* %118, align 4
  %121 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %122 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %121, i32 1)
  br label %35

123:                                              ; preds = %88
  %124 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %125 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %128 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %129 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %126, %struct.CommandControlBlock* %127, i32 %130)
  br label %35

132:                                              ; preds = %82
  %133 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %134 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock* %133, %struct.CommandControlBlock* %134, i32 %135)
  br label %35

137:                                              ; preds = %51, %43
  ret void
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @UDELAY(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @arcmsr_srb_complete(%struct.CommandControlBlock*, i32) #1

declare dso_local i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock*, %struct.CommandControlBlock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
