; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_config_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_config_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_watchdog_cmd = type { i8*, i8*, i8*, i8* }

@FW_WATCHDOG_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_config_watchdog(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fw_watchdog_cmd, align 8
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = add i32 %15, 5
  %17 = udiv i32 %16, 10
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 1, i32* %14, align 4
  br label %24

24:                                               ; preds = %23, %20, %6
  %25 = call i32 @memset(%struct.fw_watchdog_cmd* %13, i32 0, i32 32)
  %26 = load i32, i32* @FW_WATCHDOG_CMD, align 4
  %27 = call i32 @V_FW_CMD_OP(i32 %26)
  %28 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @V_FW_PARAMS_CMD_PFN(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @V_FW_PARAMS_CMD_VFN(i32 %35)
  %37 = or i32 %34, %36
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = getelementptr inbounds %struct.fw_watchdog_cmd, %struct.fw_watchdog_cmd* %13, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = call i32 @FW_LEN16(%struct.fw_watchdog_cmd* byval(%struct.fw_watchdog_cmd) align 8 %13)
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = getelementptr inbounds %struct.fw_watchdog_cmd, %struct.fw_watchdog_cmd* %13, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = getelementptr inbounds %struct.fw_watchdog_cmd, %struct.fw_watchdog_cmd* %13, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = getelementptr inbounds %struct.fw_watchdog_cmd, %struct.fw_watchdog_cmd* %13, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = load %struct.adapter*, %struct.adapter** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @t4_wr_mbox(%struct.adapter* %49, i32 %50, %struct.fw_watchdog_cmd* %13, i32 32, i32* null)
  ret i32 %51
}

declare dso_local i32 @memset(%struct.fw_watchdog_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_PARAMS_CMD_PFN(i32) #1

declare dso_local i32 @V_FW_PARAMS_CMD_VFN(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_watchdog_cmd* byval(%struct.fw_watchdog_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_watchdog_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
