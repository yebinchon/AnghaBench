; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hbd_srbdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hbd_srbdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64, i32, i64, i32, i32, i64 }
%struct.CommandControlBlock = type { i64, %struct.TYPE_6__*, %struct.AdapterControlBlock* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.HBD_MessageUnit0 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HBD_MessageUnit = common dso_local global i32 0, align 4
@outboundlist_read_pointer = common dso_local global i32 0, align 4
@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_ABORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"arcmsr%d: scsi id=%d lun=%jx srb='%p'poll command abort successfully \0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"arcmsr%d: polling get an illegal srb command done srb='%p'srboutstandingcount=%d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, %struct.CommandControlBlock*)* @arcmsr_polling_hbd_srbdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_polling_hbd_srbdone(%struct.AdapterControlBlock* %0, %struct.CommandControlBlock* %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.CommandControlBlock*, align 8
  %5 = alloca %struct.HBD_MessageUnit0*, align 8
  %6 = alloca %struct.CommandControlBlock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store %struct.CommandControlBlock* %1, %struct.CommandControlBlock** %4, align 8
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %14 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.HBD_MessageUnit0*
  store %struct.HBD_MessageUnit0* %16, %struct.HBD_MessageUnit0** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %63, %2
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %21 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %24 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %27 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @bus_dmamap_sync(i32 %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %17, %125, %154, %163
  %31 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %5, align 8
  %32 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %5, align 8
  %38 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 255
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %30
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %168

49:                                               ; preds = %45
  %50 = call i32 @UDELAY(i32 25000)
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 100
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %55 = icmp ne %struct.CommandControlBlock* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %168

57:                                               ; preds = %53, %49
  %58 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %59 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %168

63:                                               ; preds = %57
  br label %17

64:                                               ; preds = %30
  %65 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %5, align 8
  %66 = call i32 @arcmsr_get_doneq_index(%struct.HBD_MessageUnit0* %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %5, align 8
  %68 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, 255
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %7, align 4
  %77 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %78 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, -32
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %79, %82
  %84 = inttoptr i64 %83 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %84, %struct.CommandControlBlock** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE1, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %64
  %90 = load i32, i32* @TRUE, align 4
  br label %93

91:                                               ; preds = %64
  %92 = load i32, i32* @FALSE, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* @HBD_MessageUnit, align 4
  %96 = load i32, i32* @outboundlist_read_pointer, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @CHIP_REG_WRITE32(i32 %95, i32 0, i32 %96, i32 %97)
  %99 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %100 = icmp ne %struct.CommandControlBlock* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %103 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %104 = icmp eq %struct.CommandControlBlock* %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %101, %93
  %108 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %109 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %108, i32 0, i32 2
  %110 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %109, align 8
  %111 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %112 = icmp ne %struct.AdapterControlBlock* %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %115 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ARCMSR_SRB_START, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %163

119:                                              ; preds = %113, %107
  %120 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %121 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ARCMSR_SRB_ABORTED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %154

125:                                              ; preds = %119
  %126 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %127 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %130 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %136 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %143 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %134, i32 %141, %struct.CommandControlBlock* %142)
  %144 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %145 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %146 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %144
  store i32 %151, i32* %149, align 4
  %152 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %153 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %152, i32 1)
  br label %30

154:                                              ; preds = %119
  %155 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %156 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %159 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %160 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %157, %struct.CommandControlBlock* %158, i64 %161)
  br label %30

163:                                              ; preds = %113
  %164 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %165 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %6, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock* %164, %struct.CommandControlBlock* %165, i32 %166)
  br label %30

168:                                              ; preds = %62, %56, %48
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @UDELAY(i32) #1

declare dso_local i32 @arcmsr_get_doneq_index(%struct.HBD_MessageUnit0*) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @arcmsr_srb_complete(%struct.CommandControlBlock*, i32) #1

declare dso_local i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock*, %struct.CommandControlBlock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
