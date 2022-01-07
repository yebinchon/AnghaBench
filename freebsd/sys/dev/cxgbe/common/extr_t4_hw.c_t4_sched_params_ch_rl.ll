; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_params_ch_rl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_params_ch_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_sched_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32, i32 }

@FW_SCHED_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_SCHED_SC_PARAMS = common dso_local global i32 0, align 4
@FW_SCHED_TYPE_PKTSCHED = common dso_local global i32 0, align 4
@FW_SCHED_PARAMS_LEVEL_CH_RL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sched_params_ch_rl(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fw_sched_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @memset(%struct.fw_sched_cmd* %11, i32 0, i32 48)
  %13 = load i32, i32* @FW_SCHED_CMD, align 4
  %14 = call i32 @V_FW_CMD_OP(i32 %13)
  %15 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %11, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = call i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8 %11)
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %11, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @FW_SCHED_SC_PARAMS, align 4
  %25 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %11, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @FW_SCHED_TYPE_PKTSCHED, align 4
  %29 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %11, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @FW_SCHED_PARAMS_LEVEL_CH_RL, align 4
  %33 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %11, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %11, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %11, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %11, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load %struct.adapter*, %struct.adapter** %6, align 8
  %50 = load %struct.adapter*, %struct.adapter** %6, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @t4_wr_mbox_meat(%struct.adapter* %49, i32 %52, %struct.fw_sched_cmd* %11, i32 48, i32* null, i32 %53)
  ret i32 %54
}

declare dso_local i32 @memset(%struct.fw_sched_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_sched_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
