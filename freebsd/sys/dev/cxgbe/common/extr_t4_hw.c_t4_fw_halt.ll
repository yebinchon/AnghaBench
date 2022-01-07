; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_halt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_reset_cmd = type { i8*, i8* }

@FW_OK = common dso_local global i32 0, align 4
@M_PCIE_FW_MASTER = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@F_PIORST = common dso_local global i32 0, align 4
@F_PIORSTMODE = common dso_local global i32 0, align 4
@F_FW_RESET_CMD_HALT = common dso_local global i32 0, align 4
@A_CIM_BOOT_CFG = common dso_local global i32 0, align 4
@F_UPCRST = common dso_local global i32 0, align 4
@A_PCIE_FW = common dso_local global i32 0, align 4
@F_PCIE_FW_HALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fw_halt(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_reset_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FW_OK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @M_PCIE_FW_MASTER, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = call i32 @memset(%struct.fw_reset_cmd* %8, i32 0, i32 16)
  %21 = load i32, i32* @RESET, align 4
  %22 = load i32, i32* @WRITE, align 4
  %23 = bitcast %struct.fw_reset_cmd* %8 to { i8*, i8* }*
  %24 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %23, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @INIT_CMD(i8* %25, i8* %27, i32 %21, i32 %22)
  %29 = load i32, i32* @F_PIORST, align 4
  %30 = load i32, i32* @F_PIORSTMODE, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %8, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @F_FW_RESET_CMD_HALT, align 4
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %8, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @t4_wr_mbox(%struct.adapter* %37, i32 %38, %struct.fw_reset_cmd* %8, i32 16, i32* null)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %19, %15, %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43, %40
  %47 = load %struct.adapter*, %struct.adapter** %4, align 8
  %48 = load i32, i32* @A_CIM_BOOT_CFG, align 4
  %49 = load i32, i32* @F_UPCRST, align 4
  %50 = load i32, i32* @F_UPCRST, align 4
  %51 = call i32 @t4_set_reg_field(%struct.adapter* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = load i32, i32* @A_PCIE_FW, align 4
  %54 = load i32, i32* @F_PCIE_FW_HALT, align 4
  %55 = load i32, i32* @F_PCIE_FW_HALT, align 4
  %56 = call i32 @t4_set_reg_field(%struct.adapter* %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %43
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.fw_reset_cmd*, i32, i32) #1

declare dso_local i32 @INIT_CMD(i8*, i8*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_reset_cmd*, i32, i32*) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
