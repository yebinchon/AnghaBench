; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_wait_firmware_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_wait_firmware_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i64 }
%struct.HBB_MessageUnit = type { i32, i32 }

@HBA_MessageUnit = common dso_local global i32 0, align 4
@outbound_msgaddr1 = common dso_local global i32 0, align 4
@ARCMSR_OUTBOUND_MESG1_FIRMWARE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"arcmsr%d:timed out waiting for firmware \0A\00", align 1
@ARCMSR_MESSAGE_FIRMWARE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"arcmsr%d: timed out waiting for firmware \0A\00", align 1
@ARCMSR_DRV2IOP_END_OF_INTERRUPT = common dso_local global i32 0, align 4
@HBC_MessageUnit = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_MESSAGE_FIRMWARE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"arcmsr%d:timed out waiting for firmware ready\0A\00", align 1
@HBD_MessageUnit = common dso_local global i32 0, align 4
@ARCMSR_HBDMU_MESSAGE_FIRMWARE_OK = common dso_local global i32 0, align 4
@HBE_MessageUnit = common dso_local global i32 0, align 4
@ARCMSR_HBEMU_MESSAGE_FIRMWARE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_wait_firmware_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_wait_firmware_ready(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.HBB_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %6 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %118 [
    i32 132, label %8
    i32 131, label %28
    i32 130, label %58
    i32 129, label %78
    i32 128, label %98
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %25, %8
  %10 = load i32, i32* @HBA_MessageUnit, align 4
  %11 = load i32, i32* @outbound_msgaddr1, align 4
  %12 = call i32 @CHIP_REG_READ32(i32 %10, i32 0, i32 %11)
  %13 = load i32, i32* @ARCMSR_OUTBOUND_MESG1_FIRMWARE_OK, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = icmp sgt i32 %17, 2000
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %22 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %118

25:                                               ; preds = %16
  %26 = call i32 @UDELAY(i32 15000)
  br label %9

27:                                               ; preds = %9
  br label %118

28:                                               ; preds = %1
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %30 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %32, %struct.HBB_MessageUnit** %4, align 8
  br label %33

33:                                               ; preds = %50, %28
  %34 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %35 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @READ_CHIP_REG32(i32 0, i32 %36)
  %38 = load i32, i32* @ARCMSR_MESSAGE_FIRMWARE_OK, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = icmp sgt i32 %42, 2000
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %47 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %118

50:                                               ; preds = %41
  %51 = call i32 @UDELAY(i32 15000)
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %4, align 8
  %54 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ARCMSR_DRV2IOP_END_OF_INTERRUPT, align 4
  %57 = call i32 @WRITE_CHIP_REG32(i32 0, i32 %55, i32 %56)
  br label %118

58:                                               ; preds = %1
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* @HBC_MessageUnit, align 4
  %61 = load i32, i32* @outbound_msgaddr1, align 4
  %62 = call i32 @CHIP_REG_READ32(i32 %60, i32 0, i32 %61)
  %63 = load i32, i32* @ARCMSR_HBCMU_MESSAGE_FIRMWARE_OK, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  %69 = icmp sgt i32 %67, 2000
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %72 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %118

75:                                               ; preds = %66
  %76 = call i32 @UDELAY(i32 15000)
  br label %59

77:                                               ; preds = %59
  br label %118

78:                                               ; preds = %1
  br label %79

79:                                               ; preds = %95, %78
  %80 = load i32, i32* @HBD_MessageUnit, align 4
  %81 = load i32, i32* @outbound_msgaddr1, align 4
  %82 = call i32 @CHIP_REG_READ32(i32 %80, i32 0, i32 %81)
  %83 = load i32, i32* @ARCMSR_HBDMU_MESSAGE_FIRMWARE_OK, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  %89 = icmp sgt i32 %87, 2000
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %92 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %118

95:                                               ; preds = %86
  %96 = call i32 @UDELAY(i32 15000)
  br label %79

97:                                               ; preds = %79
  br label %118

98:                                               ; preds = %1
  br label %99

99:                                               ; preds = %115, %98
  %100 = load i32, i32* @HBE_MessageUnit, align 4
  %101 = load i32, i32* @outbound_msgaddr1, align 4
  %102 = call i32 @CHIP_REG_READ32(i32 %100, i32 0, i32 %101)
  %103 = load i32, i32* @ARCMSR_HBEMU_MESSAGE_FIRMWARE_OK, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  %109 = icmp sgt i32 %107, 4000
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %112 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %118

115:                                              ; preds = %106
  %116 = call i32 @UDELAY(i32 15000)
  br label %99

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %20, %45, %70, %90, %110, %1, %117, %97, %77, %52, %27
  ret void
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @UDELAY(i32) #1

declare dso_local i32 @READ_CHIP_REG32(i32, i32) #1

declare dso_local i32 @WRITE_CHIP_REG32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
