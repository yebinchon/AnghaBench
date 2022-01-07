; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SLI4_FW_READY_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"FW status is NOT ready\0A\00", align 1
@SLI4_PCI_SOFT_RESET_CSR = common dso_local global i32 0, align 4
@SLI4_PCI_SOFT_RESET_MASK = common dso_local global i64 0, align 8
@SLI4_PHYDEV_CONTROL_FRST = common dso_local global i64 0, align 8
@SLI4_REG_PHYSDEV_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unexpected iftype %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to become ready after firmware reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fw_reset(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = load i32, i32* @SLI4_FW_READY_TIMEOUT_MSEC, align 4
  %8 = call i64 @sli_wait_for_fw_ready(%struct.TYPE_5__* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ocs_log_crit(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %41 [
    i32 129, label %20
    i32 128, label %35
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SLI4_PCI_SOFT_RESET_CSR, align 4
  %25 = call i64 @ocs_config_read32(i32 %23, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* @SLI4_PCI_SOFT_RESET_MASK, align 8
  %27 = load i64, i64* %4, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SLI4_PCI_SOFT_RESET_CSR, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ocs_config_write32(i32 %31, i32 %32, i64 %33)
  br label %49

35:                                               ; preds = %16
  %36 = load i64, i64* @SLI4_PHYDEV_CONTROL_FRST, align 8
  store i64 %36, i64* %4, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i32, i32* @SLI4_REG_PHYSDEV_CONTROL, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @sli_reg_write(%struct.TYPE_5__* %37, i32 %38, i64 %39)
  br label %49

41:                                               ; preds = %16
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ocs_log_test(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %2, align 4
  br label %61

49:                                               ; preds = %35, %20
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = load i32, i32* @SLI4_FW_READY_TIMEOUT_MSEC, align 4
  %52 = call i64 @sli_wait_for_fw_ready(%struct.TYPE_5__* %50, i32 %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ocs_log_crit(i32 %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55, %41, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @sli_wait_for_fw_ready(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ocs_log_crit(i32, i8*) #1

declare dso_local i64 @ocs_config_read32(i32, i32) #1

declare dso_local i32 @ocs_config_write32(i32, i32, i64) #1

declare dso_local i32 @sli_reg_write(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
