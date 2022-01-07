; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@MISC_REG_DRIVER_CONTROL_1 = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_7 = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_NVRAM = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Releasing previously held NVRAM lock\0A\00", align 1
@MCP_REG_MCPR_NVM_SW_ARB = common dso_local global i32 0, align 4
@MCPR_NVM_SW_ARB_ARB_REQ_CLR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Releasing previously held HW lock\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"No need to release HW/NVRAM locks\0A\00", align 1
@MCPR_ACCESS_LOCK_LOCK = common dso_local global i32 0, align 4
@MCP_REG_MCPR_ACCESS_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Releasing previously held ALR\0A\00", align 1
@DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1
@FW_MSG_CODE_DRV_UNLOAD_COMMON = common dso_local global i32 0, align 4
@BXE_PREV_WAIT_NEEDED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"Failed to unload previous driver! time_counter %d rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_prev_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_prev_unload(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 10, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = call i32 @bxe_prev_interrupted_dmae(%struct.bxe_softc* %8)
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = call i32 @SC_FUNC(%struct.bxe_softc* %10)
  %12 = icmp sle i32 %11, 5
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @MISC_REG_DRIVER_CONTROL_1, align 4
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = call i32 @SC_FUNC(%struct.bxe_softc* %15)
  %17 = mul nsw i32 %16, 8
  %18 = add nsw i32 %14, %17
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @MISC_REG_DRIVER_CONTROL_7, align 4
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %22 = call i32 @SC_FUNC(%struct.bxe_softc* %21)
  %23 = sub nsw i32 %22, 6
  %24 = mul nsw i32 %23, 8
  %25 = add nsw i32 %20, %24
  br label %26

26:                                               ; preds = %19, %13
  %27 = phi i32 [ %18, %13 ], [ %25, %19 ]
  store i32 %27, i32* %5, align 4
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @REG_RD(%struct.bxe_softc* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @HW_LOCK_RESOURCE_NVRAM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = load i32, i32* @DBG_LOAD, align 4
  %41 = call i32 @BLOGD(%struct.bxe_softc* %39, i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = load i32, i32* @MCP_REG_MCPR_NVM_SW_ARB, align 4
  %44 = load i32, i32* @MCPR_NVM_SW_ARB_ARB_REQ_CLR1, align 4
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = call i32 @SC_PORT(%struct.bxe_softc* %45)
  %47 = shl i32 %44, %46
  %48 = call i32 @REG_WR(%struct.bxe_softc* %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %38, %33
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %51 = load i32, i32* @DBG_LOAD, align 4
  %52 = call i32 @BLOGD(%struct.bxe_softc* %50, i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @REG_WR(%struct.bxe_softc* %53, i32 %54, i32 -1)
  br label %60

56:                                               ; preds = %26
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %58 = load i32, i32* @DBG_LOAD, align 4
  %59 = call i32 @BLOGD(%struct.bxe_softc* %57, i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i32, i32* @MCPR_ACCESS_LOCK_LOCK, align 4
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %63 = load i32, i32* @MCP_REG_MCPR_ACCESS_LOCK, align 4
  %64 = call i32 @REG_RD(%struct.bxe_softc* %62, i32 %63)
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = load i32, i32* @DBG_LOAD, align 4
  %70 = call i32 @BLOGD(%struct.bxe_softc* %68, i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %72 = load i32, i32* @MCP_REG_MCPR_ACCESS_LOCK, align 4
  %73 = call i32 @REG_WR(%struct.bxe_softc* %71, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %67, %60
  br label %75

75:                                               ; preds = %100, %74
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %77 = load i32, i32* @DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS, align 4
  %78 = call i32 @bxe_fw_command(%struct.bxe_softc* %76, i32 %77, i32 0)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %83 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %104

84:                                               ; preds = %75
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @FW_MSG_CODE_DRV_UNLOAD_COMMON, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %90 = call i32 @bxe_prev_unload_common(%struct.bxe_softc* %89)
  store i32 %90, i32* %7, align 4
  br label %104

91:                                               ; preds = %84
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %93 = call i32 @bxe_prev_unload_uncommon(%struct.bxe_softc* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @BXE_PREV_WAIT_NEEDED, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %104

98:                                               ; preds = %91
  %99 = call i32 @DELAY(i32 20000)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %75, label %104

104:                                              ; preds = %100, %97, %88, %81
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107, %104
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %111, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %112, i32 %113)
  store i32 -1, i32* %7, align 4
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @bxe_prev_interrupted_dmae(%struct.bxe_softc*) #1

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_fw_command(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i32 @bxe_prev_unload_common(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_prev_unload_uncommon(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
