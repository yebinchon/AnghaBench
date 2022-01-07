; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_report_fw_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_report_fw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@t4_report_fw_error.reason = internal constant [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"Crash\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"During Device Preparation\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"During Device Configuration\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"During Device Initialization\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Unexpected Event\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Insufficient Airflow\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Device Shutdown\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@A_PCIE_FW = common dso_local global i32 0, align 4
@F_PCIE_FW_ERR = common dso_local global i32 0, align 4
@FW_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"firmware reports adapter error: %s (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @t4_report_fw_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_report_fw_error(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = load i32, i32* @A_PCIE_FW, align 4
  %6 = call i32 @t4_read_reg(%struct.adapter* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @F_PCIE_FW_ERR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @FW_OK, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @G_PCIE_FW_EVAL(i32 %19)
  %21 = getelementptr inbounds [8 x i8*], [8 x i8*]* @t4_report_fw_error.reason, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @CH_ERR(%struct.adapter* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %11
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = call i32 @t4_os_dump_devlog(%struct.adapter* %28)
  br label %30

30:                                               ; preds = %27, %11
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i8*, i32) #1

declare dso_local i64 @G_PCIE_FW_EVAL(i32) #1

declare dso_local i32 @t4_os_dump_devlog(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
