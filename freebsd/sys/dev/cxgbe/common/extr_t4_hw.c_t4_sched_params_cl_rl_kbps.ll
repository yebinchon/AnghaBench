; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_params_cl_rl_kbps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_params_cl_rl_kbps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_sched_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32 }

@FW_SCHED_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_SCHED_SC_PARAMS = common dso_local global i32 0, align 4
@FW_SCHED_TYPE_PKTSCHED = common dso_local global i32 0, align 4
@FW_SCHED_PARAMS_LEVEL_CL_RL = common dso_local global i32 0, align 4
@FW_SCHED_PARAMS_UNIT_BITRATE = common dso_local global i32 0, align 4
@FW_SCHED_PARAMS_RATE_ABS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sched_params_cl_rl_kbps(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fw_sched_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = call i32 @memset(%struct.fw_sched_cmd* %15, i32 0, i32 64)
  %17 = load i32, i32* @FW_SCHED_CMD, align 4
  %18 = call i32 @V_FW_CMD_OP(i32 %17)
  %19 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = call i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8 %15)
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @FW_SCHED_SC_PARAMS, align 4
  %29 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 9
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @FW_SCHED_TYPE_PKTSCHED, align 4
  %33 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 8
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @FW_SCHED_PARAMS_LEVEL_CL_RL, align 4
  %37 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 7
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @FW_SCHED_PARAMS_UNIT_BITRATE, align 4
  %53 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @FW_SCHED_PARAMS_RATE_ABS, align 4
  %57 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  store i8* %61, i8** %64, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @cpu_to_be16(i32 %65)
  %67 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %15, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load %struct.adapter*, %struct.adapter** %8, align 8
  %71 = load %struct.adapter*, %struct.adapter** %8, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @t4_wr_mbox_meat(%struct.adapter* %70, i32 %73, %struct.fw_sched_cmd* %15, i32 64, i32* null, i32 %74)
  ret i32 %75
}

declare dso_local i32 @memset(%struct.fw_sched_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_sched_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
