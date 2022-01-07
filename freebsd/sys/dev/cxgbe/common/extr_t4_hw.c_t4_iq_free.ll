; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_iq_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_iq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_iq_cmd = type { i8*, i8*, i8*, i8*, i8*, i8* }

@FW_IQ_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_EXEC = common dso_local global i32 0, align 4
@F_FW_IQ_CMD_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_iq_free(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fw_iq_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = call i32 @memset(%struct.fw_iq_cmd* %17, i32 0, i32 48)
  %19 = load i32, i32* @FW_IQ_CMD, align 4
  %20 = call i32 @V_FW_CMD_OP(i32 %19)
  %21 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @F_FW_CMD_EXEC, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @V_FW_IQ_CMD_PFN(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @V_FW_IQ_CMD_VFN(i32 %28)
  %30 = or i32 %27, %29
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %17, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @F_FW_IQ_CMD_FREE, align 4
  %34 = call i32 @FW_LEN16(%struct.fw_iq_cmd* byval(%struct.fw_iq_cmd) align 8 %17)
  %35 = or i32 %33, %34
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %17, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @V_FW_IQ_CMD_TYPE(i32 %38)
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %17, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i8* @cpu_to_be16(i32 %42)
  %44 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %17, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i8* @cpu_to_be16(i32 %45)
  %47 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %17, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call i8* @cpu_to_be16(i32 %48)
  %50 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %17, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load %struct.adapter*, %struct.adapter** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @t4_wr_mbox(%struct.adapter* %51, i32 %52, %struct.fw_iq_cmd* %17, i32 48, i32* null)
  ret i32 %53
}

declare dso_local i32 @memset(%struct.fw_iq_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_IQ_CMD_PFN(i32) #1

declare dso_local i32 @V_FW_IQ_CMD_VFN(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_iq_cmd* byval(%struct.fw_iq_cmd) align 8) #1

declare dso_local i32 @V_FW_IQ_CMD_TYPE(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_iq_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
