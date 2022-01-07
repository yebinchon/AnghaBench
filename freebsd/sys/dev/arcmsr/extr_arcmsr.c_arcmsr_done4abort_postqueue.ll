; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_done4abort_postqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_done4abort_postqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i64 }
%struct.HBB_MessageUnit = type { i32*, i32, i32, i32*, i32 }

@HBA_MessageUnit = common dso_local global i32 0, align 4
@outbound_queueport = common dso_local global i32 0, align 4
@ARCMSR_MAX_OUTSTANDING_CMD = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ARCMSR_DOORBELL_INT_CLEAR_PATTERN = common dso_local global i32 0, align 4
@ARCMSR_MAX_HBB_POSTQUEUE = common dso_local global i32 0, align 4
@HBC_MessageUnit = common dso_local global i32 0, align 4
@host_int_status = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR = common dso_local global i32 0, align 4
@outbound_queueport_low = common dso_local global i32 0, align 4
@ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_done4abort_postqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_done4abort_postqueue(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.HBB_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %9 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %150 [
    i32 132, label %11
    i32 131, label %51
    i32 130, label %110
    i32 129, label %144
    i32 128, label %147
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @HBA_MessageUnit, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @CHIP_REG_READ32(i32 %12, i32 0, i32 %13)
  %15 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %16 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @HBA_MessageUnit, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @CHIP_REG_WRITE32(i32 %19, i32 0, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %44, %11
  %24 = load i32, i32* @HBA_MessageUnit, align 4
  %25 = load i32, i32* @outbound_queueport, align 4
  %26 = call i32 @CHIP_REG_READ32(i32 %24, i32 0, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @ARCMSR_MAX_OUTSTANDING_CMD, align 4
  %32 = icmp slt i32 %29, %31
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE0, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @TRUE, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @FALSE, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %5, align 4
  %46 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock* %46, i32 %47, i32 %48)
  br label %23

50:                                               ; preds = %33
  br label %150

51:                                               ; preds = %1
  %52 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %53 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %55, %struct.HBB_MessageUnit** %7, align 8
  %56 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %57 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ARCMSR_DOORBELL_INT_CLEAR_PATTERN, align 4
  %60 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %102, %51
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @ARCMSR_MAX_HBB_POSTQUEUE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %61
  %66 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %67 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %65
  %75 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %76 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE0, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i32, i32* @TRUE, align 4
  br label %89

87:                                               ; preds = %74
  %88 = load i32, i32* @FALSE, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %5, align 4
  %91 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %65
  %96 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %97 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %61

105:                                              ; preds = %61
  %106 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %107 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %106, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %7, align 8
  %109 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %108, i32 0, i32 1
  store i32 0, i32* %109, align 8
  br label %150

110:                                              ; preds = %1
  br label %111

111:                                              ; preds = %137, %110
  %112 = load i32, i32* @HBC_MessageUnit, align 4
  %113 = load i32, i32* @host_int_status, align 4
  %114 = call i32 @CHIP_REG_READ32(i32 %112, i32 0, i32 %113)
  %115 = load i32, i32* @ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* @ARCMSR_MAX_OUTSTANDING_CMD, align 4
  %122 = icmp slt i32 %119, %121
  br label %123

123:                                              ; preds = %118, %111
  %124 = phi i1 [ false, %111 ], [ %122, %118 ]
  br i1 %124, label %125, label %143

125:                                              ; preds = %123
  %126 = load i32, i32* @HBC_MessageUnit, align 4
  %127 = load i32, i32* @outbound_queueport_low, align 4
  %128 = call i32 @CHIP_REG_READ32(i32 %126, i32 0, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @ARCMSR_SRBREPLY_FLAG_ERROR_MODE1, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i32, i32* @TRUE, align 4
  br label %137

135:                                              ; preds = %125
  %136 = load i32, i32* @FALSE, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  store i32 %138, i32* %5, align 4
  %139 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock* %139, i32 %140, i32 %141)
  br label %111

143:                                              ; preds = %123
  br label %150

144:                                              ; preds = %1
  %145 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %146 = call i32 @arcmsr_hbd_postqueue_isr(%struct.AdapterControlBlock* %145)
  br label %150

147:                                              ; preds = %1
  %148 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %149 = call i32 @arcmsr_hbe_postqueue_isr(%struct.AdapterControlBlock* %148)
  br label %150

150:                                              ; preds = %1, %147, %144, %143, %105, %50
  ret void
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @arcmsr_drain_donequeue(%struct.AdapterControlBlock*, i32, i32) #1

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

declare dso_local i32 @arcmsr_hbd_postqueue_isr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hbe_postqueue_isr(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
