; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hbe_srbdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hbe_srbdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i64, i32, i32, %struct.TYPE_4__*, %struct.CommandControlBlock**, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.CommandControlBlock = type { i64, %struct.TYPE_6__*, %struct.AdapterControlBlock* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@reply_post_producer_index = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_ABORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"arcmsr%d: scsi id=%d lun=%jx srb='%p'poll command abort successfully \0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"arcmsr%d: polling get an illegal srb command done srb='%p'srboutstandingcount=%d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, %struct.CommandControlBlock*)* @arcmsr_polling_hbe_srbdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_polling_hbe_srbdone(%struct.AdapterControlBlock* %0, %struct.CommandControlBlock* %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.CommandControlBlock*, align 8
  %5 = alloca %struct.CommandControlBlock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store %struct.CommandControlBlock* %1, %struct.CommandControlBlock** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %52, %2
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %15 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %18 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %21 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bus_dmamap_sync(i32 %16, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %11, %123, %152, %161
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @HBE_MessageUnit, align 4
  %29 = load i32, i32* @reply_post_producer_index, align 4
  %30 = call i32 @CHIP_REG_READ32(i32 %28, i32 0, i32 %29)
  %31 = and i32 %30, 65535
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %166

38:                                               ; preds = %34
  %39 = call i32 @UDELAY(i32 25000)
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 100
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %44 = icmp ne %struct.CommandControlBlock* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %166

46:                                               ; preds = %42, %38
  %47 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %48 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %166

52:                                               ; preds = %46
  br label %11

53:                                               ; preds = %24
  %54 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %55 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %66 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %73 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %75 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %74, i32 0, i32 5
  %76 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %76, i64 %77
  %79 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %78, align 8
  store %struct.CommandControlBlock* %79, %struct.CommandControlBlock** %5, align 8
  %80 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %81 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %80, i32 0, i32 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE1, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %70
  %92 = load i64, i64* @TRUE, align 8
  br label %95

93:                                               ; preds = %70
  %94 = load i64, i64* @FALSE, align 8
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i64 [ %92, %91 ], [ %94, %93 ]
  store i64 %96, i64* %9, align 8
  %97 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %98 = icmp ne %struct.CommandControlBlock* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %101 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %102 = icmp eq %struct.CommandControlBlock* %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %99, %95
  %106 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %107 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %106, i32 0, i32 2
  %108 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %107, align 8
  %109 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %110 = icmp ne %struct.AdapterControlBlock* %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %113 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ARCMSR_SRB_START, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %161

117:                                              ; preds = %111, %105
  %118 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %119 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ARCMSR_SRB_ABORTED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %152

123:                                              ; preds = %117
  %124 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %125 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %128 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %134 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %141 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %132, i32 %139, %struct.CommandControlBlock* %140)
  %142 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %143 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %144 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %142
  store i32 %149, i32* %147, align 4
  %150 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %151 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %150, i32 1)
  br label %24

152:                                              ; preds = %117
  %153 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %154 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %157 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %158 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %155, %struct.CommandControlBlock* %156, i64 %159)
  br label %24

161:                                              ; preds = %111
  %162 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %163 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock* %162, %struct.CommandControlBlock* %163, i64 %164)
  br label %24

166:                                              ; preds = %51, %45, %37
  %167 = load i32, i32* @HBE_MessageUnit, align 4
  %168 = load i32, i32* @reply_post_producer_index, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @CHIP_REG_WRITE32(i32 %167, i32 0, i32 %168, i32 %169)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @UDELAY(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @arcmsr_srb_complete(%struct.CommandControlBlock*, i32) #1

declare dso_local i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock*, %struct.CommandControlBlock*, i64) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
