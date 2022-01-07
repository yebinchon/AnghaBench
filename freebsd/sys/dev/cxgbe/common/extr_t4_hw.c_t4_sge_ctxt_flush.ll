; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sge_ctxt_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sge_ctxt_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@FW_LDST_ADDRSPC_SGE_EGRC = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_READ = common dso_local global i32 0, align 4
@F_FW_LDST_CMD_CTXTFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_ctxt_flush(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_ldst_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @memset(%struct.fw_ldst_cmd* %7, i32 0, i32 24)
  %9 = load i32, i32* @FW_LDST_ADDRSPC_SGE_EGRC, align 4
  %10 = call i32 @V_FW_LDST_CMD_ADDRSPACE(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @FW_LDST_CMD, align 4
  %12 = call i32 @V_FW_CMD_OP(i32 %11)
  %13 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @F_FW_CMD_READ, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %7, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %7)
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %7, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @F_FW_LDST_CMD_CTXTFLUSH, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @t4_wr_mbox(%struct.adapter* %29, i32 %30, %struct.fw_ldst_cmd* %7, i32 24, %struct.fw_ldst_cmd* %7)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i32 @V_FW_LDST_CMD_ADDRSPACE(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
