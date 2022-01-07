; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_sched_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@FW_SCHED_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_SCHED_SC_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sched_config(%struct.adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_sched_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.fw_sched_cmd* %9, i32 0, i32 32)
  %11 = load i32, i32* @FW_SCHED_CMD, align 4
  %12 = call i32 @V_FW_CMD_OP(i32 %11)
  %13 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %9, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = call i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8 %9)
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %9, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @FW_SCHED_SC_CONFIG, align 4
  %23 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %9, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %9, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %9, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.adapter*, %struct.adapter** %5, align 8
  %35 = load %struct.adapter*, %struct.adapter** %5, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @t4_wr_mbox_meat(%struct.adapter* %34, i32 %37, %struct.fw_sched_cmd* %9, i32 32, i32* null, i32 %38)
  ret i32 %39
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
