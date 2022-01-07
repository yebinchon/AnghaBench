; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hbc_srbdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_hbc_srbdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64, i32, i64, i32, i32 }
%struct.CommandControlBlock = type { i64, %struct.TYPE_4__*, %struct.AdapterControlBlock* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@HBC_MessageUnit = common dso_local global i32 0, align 4
@host_int_status = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR = common dso_local global i32 0, align 4
@outbound_queueport_low = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_ABORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"arcmsr%d: scsi id=%d lun=%jx srb='%p'poll command abort successfully \0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"arcmsr%d: polling get an illegal srb command done srb='%p'srboutstandingcount=%d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, %struct.CommandControlBlock*)* @arcmsr_polling_hbc_srbdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_polling_hbc_srbdone(%struct.AdapterControlBlock* %0, %struct.CommandControlBlock* %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.CommandControlBlock*, align 8
  %5 = alloca %struct.CommandControlBlock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store %struct.CommandControlBlock* %1, %struct.CommandControlBlock** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %14 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %17 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %20 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @bus_dmamap_sync(i32 %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %10, %97, %126, %135
  %24 = load i32, i32* @HBC_MessageUnit, align 4
  %25 = load i32, i32* @host_int_status, align 4
  %26 = call i32 @CHIP_REG_READ32(i32 %24, i32 0, i32 %25)
  %27 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %140

34:                                               ; preds = %30
  %35 = call i32 @UDELAY(i32 25000)
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 100
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %40 = icmp ne %struct.CommandControlBlock* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %140

42:                                               ; preds = %38, %34
  %43 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %44 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %140

48:                                               ; preds = %42
  br label %10

49:                                               ; preds = %23
  %50 = load i32, i32* @HBC_MessageUnit, align 4
  %51 = load i32, i32* @outbound_queueport_low, align 4
  %52 = call i32 @CHIP_REG_READ32(i32 %50, i32 0, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %54 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, -32
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = inttoptr i64 %59 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %60, %struct.CommandControlBlock** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE1, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %49
  %66 = load i32, i32* @TRUE, align 4
  br label %69

67:                                               ; preds = %49
  %68 = load i32, i32* @FALSE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %9, align 4
  %71 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %72 = icmp ne %struct.CommandControlBlock* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %75 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %76 = icmp eq %struct.CommandControlBlock* %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %73, %69
  %80 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %81 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %80, i32 0, i32 2
  %82 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %81, align 8
  %83 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %84 = icmp ne %struct.AdapterControlBlock* %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %87 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ARCMSR_SRB_START, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %135

91:                                               ; preds = %85, %79
  %92 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %93 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ARCMSR_SRB_ABORTED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %91
  %98 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %99 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %102 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %108 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %115 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %106, i32 %113, %struct.CommandControlBlock* %114)
  %116 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %117 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %118 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %116
  store i32 %123, i32* %121, align 4
  %124 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %125 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %124, i32 1)
  br label %23

126:                                              ; preds = %91
  %127 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %128 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %131 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %132 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %129, %struct.CommandControlBlock* %130, i64 %133)
  br label %23

135:                                              ; preds = %85
  %136 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %137 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock* %136, %struct.CommandControlBlock* %137, i32 %138)
  br label %23

140:                                              ; preds = %47, %41, %33
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

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
