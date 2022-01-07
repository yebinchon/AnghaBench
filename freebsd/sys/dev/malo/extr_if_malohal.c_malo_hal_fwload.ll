; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_fwload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_fwload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_hal = type { i64*, i32 }

@MALO_HOSTCMD_STA_FWRDY_SIGNATURE = common dso_local global i64 0, align 8
@MALO_HOSTCMD_STA_MODE = common dso_local global i64 0, align 8
@MALO_REG_A2H_INTERRUPT_CLEAR_SEL = common dso_local global i32 0, align 4
@MALO_A2HRIC_BIT_MASK = common dso_local global i32 0, align 4
@MALO_REG_A2H_INTERRUPT_CAUSE = common dso_local global i32 0, align 4
@MALO_REG_A2H_INTERRUPT_MASK = common dso_local global i32 0, align 4
@MALO_REG_A2H_INTERRUPT_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to load bootrom loader.\0A\00", align 1
@MALO_FW_CHECK_USECS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to load firmware.\0A\00", align 1
@MALO_FW_MAX_NUM_CHECKS = common dso_local global i32 0, align 4
@MALO_REG_GEN_PTR = common dso_local global i32 0, align 4
@MALO_REG_INT_CODE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malo_hal_fwload(%struct.malo_hal* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.malo_hal*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.malo_hal* %0, %struct.malo_hal** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i64, i64* @MALO_HOSTCMD_STA_FWRDY_SIGNATURE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* @MALO_HOSTCMD_STA_MODE, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %15 = call i32 @malo_hal_fw_reset(%struct.malo_hal* %14)
  %16 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %17 = load i32, i32* @MALO_REG_A2H_INTERRUPT_CLEAR_SEL, align 4
  %18 = load i32, i32* @MALO_A2HRIC_BIT_MASK, align 4
  %19 = call i32 @malo_hal_write4(%struct.malo_hal* %16, i32 %17, i32 %18)
  %20 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %21 = load i32, i32* @MALO_REG_A2H_INTERRUPT_CAUSE, align 4
  %22 = call i32 @malo_hal_write4(%struct.malo_hal* %20, i32 %21, i32 0)
  %23 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %24 = load i32, i32* @MALO_REG_A2H_INTERRUPT_MASK, align 4
  %25 = call i32 @malo_hal_write4(%struct.malo_hal* %23, i32 %24, i32 0)
  %26 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %27 = load i32, i32* @MALO_REG_A2H_INTERRUPT_STATUS_MASK, align 4
  %28 = load i32, i32* @MALO_A2HRIC_BIT_MASK, align 4
  %29 = call i32 @malo_hal_write4(%struct.malo_hal* %26, i32 %27, i32 %28)
  %30 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @malo_hal_fwload_helper(%struct.malo_hal* %30, i8* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %37 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %95

40:                                               ; preds = %3
  %41 = load i32, i32* @MALO_FW_CHECK_USECS, align 4
  %42 = mul nsw i32 200, %41
  %43 = call i32 @DELAY(i32 %42)
  %44 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @malo_hal_fwload_main(%struct.malo_hal* %44, i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %51 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %95

54:                                               ; preds = %40
  %55 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %56 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @MALO_HOSTCMD_STA_MODE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %64 = call i32 @malo_hal_trigger_pcicmd(%struct.malo_hal* %63)
  br label %65

65:                                               ; preds = %62, %54
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %90, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @MALO_FW_MAX_NUM_CHECKS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %72 = load i32, i32* @MALO_REG_GEN_PTR, align 4
  %73 = load i64, i64* %11, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @malo_hal_write4(%struct.malo_hal* %71, i32 %72, i32 %74)
  %76 = load i32, i32* @MALO_FW_CHECK_USECS, align 4
  %77 = call i32 @DELAY(i32 %76)
  %78 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %79 = load i32, i32* @MALO_REG_INT_CODE, align 4
  %80 = call i64 @malo_hal_read4(%struct.malo_hal* %78, i32 %79)
  %81 = load i64, i64* %10, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %70
  %84 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %85 = load i32, i32* @MALO_REG_INT_CODE, align 4
  %86 = call i32 @malo_hal_write4(%struct.malo_hal* %84, i32 %85, i32 0)
  %87 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %88 = call i32 @malo_hal_resetstate(%struct.malo_hal* %87)
  store i32 %88, i32* %4, align 4
  br label %99

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %66

93:                                               ; preds = %66
  %94 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %94, i32* %4, align 4
  br label %99

95:                                               ; preds = %49, %35
  %96 = load %struct.malo_hal*, %struct.malo_hal** %5, align 8
  %97 = call i32 @malo_hal_fw_reset(%struct.malo_hal* %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %93, %83
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @malo_hal_fw_reset(%struct.malo_hal*) #1

declare dso_local i32 @malo_hal_write4(%struct.malo_hal*, i32, i32) #1

declare dso_local i32 @malo_hal_fwload_helper(%struct.malo_hal*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @malo_hal_fwload_main(%struct.malo_hal*, i8*) #1

declare dso_local i32 @malo_hal_trigger_pcicmd(%struct.malo_hal*) #1

declare dso_local i64 @malo_hal_read4(%struct.malo_hal*, i32) #1

declare dso_local i32 @malo_hal_resetstate(%struct.malo_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
