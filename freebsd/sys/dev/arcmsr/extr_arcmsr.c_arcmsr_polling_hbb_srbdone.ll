; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hbb_srbdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hbb_srbdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i64, i32, i32, i64 }
%struct.CommandControlBlock = type { i64, %struct.TYPE_4__*, %struct.AdapterControlBlock* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.HBB_MessageUnit = type { i32, i32*, i32 }

@ARCMSR_DOORBELL_INT_CLEAR_PATTERN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ARCMSR_MAX_HBB_POSTQUEUE = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_ABORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"arcmsr%d: scsi id=%d lun=%jx srb='%p'poll command abort successfully \0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"arcmsr%d: polling get an illegal srb command done srb='%p'srboutstandingcount=%d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, %struct.CommandControlBlock*)* @arcmsr_polling_hbb_srbdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_polling_hbb_srbdone(%struct.AdapterControlBlock* %0, %struct.CommandControlBlock* %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.CommandControlBlock*, align 8
  %5 = alloca %struct.HBB_MessageUnit*, align 8
  %6 = alloca %struct.CommandControlBlock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store %struct.CommandControlBlock* %1, %struct.CommandControlBlock** %4, align 8
  %12 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %13 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %15, %struct.HBB_MessageUnit** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %58, %2
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %5, align 8
  %20 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ARCMSR_DOORBELL_INT_CLEAR_PATTERN, align 4
  %23 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %21, i32 %22)
  %24 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %25 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %28 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %31 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @bus_dmamap_sync(i32 %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %16, %114, %143, %152
  %35 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %5, align 8
  %36 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %5, align 8
  %39 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %157

50:                                               ; preds = %46
  %51 = call i32 @UDELAY(i32 25000)
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 100
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %56 = icmp ne %struct.CommandControlBlock* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %157

58:                                               ; preds = %54, %50
  br label %16

59:                                               ; preds = %34
  %60 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %5, align 8
  %61 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @ARCMSR_MAX_HBB_POSTQUEUE, align 4
  %69 = load i32, i32* %10, align 4
  %70 = srem i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %5, align 8
  %73 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %75 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 5
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = inttoptr i64 %80 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %81, %struct.CommandControlBlock** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE0, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %59
  %87 = load i32, i32* @TRUE, align 4
  br label %90

88:                                               ; preds = %59
  %89 = load i32, i32* @FALSE, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %11, align 4
  %92 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %93 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %94 = icmp eq %struct.CommandControlBlock* %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  store i32 %96, i32* %8, align 4
  %97 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %98 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %97, i32 0, i32 2
  %99 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %98, align 8
  %100 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %101 = icmp ne %struct.AdapterControlBlock* %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %90
  %103 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %104 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ARCMSR_SRB_START, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %102, %90
  %109 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %110 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ARCMSR_SRB_ABORTED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %143

114:                                              ; preds = %108
  %115 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %116 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %119 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %125 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %132 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %123, i32 %130, %struct.CommandControlBlock* %131)
  %133 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %134 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %135 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %133
  store i32 %140, i32* %138, align 4
  %141 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %142 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %141, i32 1)
  br label %34

143:                                              ; preds = %108
  %144 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %145 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %148 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %149 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %146, %struct.CommandControlBlock* %147, i32 %150)
  br label %34

152:                                              ; preds = %102
  %153 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %154 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock* %153, %struct.CommandControlBlock* %154, i32 %155)
  br label %34

157:                                              ; preds = %57, %49
  ret void
}

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

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
