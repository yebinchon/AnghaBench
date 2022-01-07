; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_init_devlog_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_init_devlog_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fw_devlog_cmd }
%struct.fw_devlog_cmd = type { i32, i32, i32, i32, i32, i8*, i8* }
%struct.devlog_params = type { i32, i32, i32, i32, i32, i8*, i8* }

@A_PCIE_FW_PF = common dso_local global i32 0, align 4
@PCIE_FW_PF_DEVLOG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FW_DEVLOG_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_init_devlog_params(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlog_params*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_devlog_cmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast %struct.fw_devlog_cmd* %15 to %struct.devlog_params*
  store %struct.devlog_params* %16, %struct.devlog_params** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load i32, i32* @A_PCIE_FW_PF, align 4
  %19 = load i32, i32* @PCIE_FW_PF_DEVLOG, align 4
  %20 = call i32 @PCIE_FW_REG(i32 %18, i32 %19)
  %21 = call i64 @t4_read_reg(%struct.adapter* %17, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @G_PCIE_FW_PF_DEVLOG_MEMTYPE(i64 %25)
  %27 = load %struct.devlog_params*, %struct.devlog_params** %6, align 8
  %28 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @G_PCIE_FW_PF_DEVLOG_ADDR16(i64 %29)
  %31 = shl i32 %30, 4
  %32 = load %struct.devlog_params*, %struct.devlog_params** %6, align 8
  %33 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @G_PCIE_FW_PF_DEVLOG_NENTRIES128(i64 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %36, 1
  %38 = mul i32 %37, 128
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load %struct.devlog_params*, %struct.devlog_params** %6, align 8
  %44 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %96

45:                                               ; preds = %2
  %46 = load %struct.devlog_params*, %struct.devlog_params** %6, align 8
  %47 = bitcast %struct.devlog_params* %46 to %struct.fw_devlog_cmd*
  %48 = call i32 @memset(%struct.fw_devlog_cmd* %47, i32 0, i32 40)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %96

54:                                               ; preds = %45
  %55 = call i32 @memset(%struct.fw_devlog_cmd* %9, i32 0, i32 40)
  %56 = load i32, i32* @FW_DEVLOG_CMD, align 4
  %57 = call i32 @V_FW_CMD_OP(i32 %56)
  %58 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @F_FW_CMD_READ, align 4
  %61 = or i32 %59, %60
  %62 = call i8* @cpu_to_be32(i32 %61)
  %63 = getelementptr inbounds %struct.fw_devlog_cmd, %struct.fw_devlog_cmd* %9, i32 0, i32 6
  store i8* %62, i8** %63, align 8
  %64 = call i32 @FW_LEN16(%struct.fw_devlog_cmd* byval(%struct.fw_devlog_cmd) align 8 %9)
  %65 = call i8* @cpu_to_be32(i32 %64)
  %66 = getelementptr inbounds %struct.fw_devlog_cmd, %struct.fw_devlog_cmd* %9, i32 0, i32 5
  store i8* %65, i8** %66, align 8
  %67 = load %struct.adapter*, %struct.adapter** %4, align 8
  %68 = load %struct.adapter*, %struct.adapter** %4, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @t4_wr_mbox(%struct.adapter* %67, i32 %70, %struct.fw_devlog_cmd* %9, i32 40, %struct.fw_devlog_cmd* %9)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %96

76:                                               ; preds = %54
  %77 = getelementptr inbounds %struct.fw_devlog_cmd, %struct.fw_devlog_cmd* %9, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @be32_to_cpu(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @G_FW_DEVLOG_CMD_MEMTYPE_DEVLOG(i32 %81)
  %83 = load %struct.devlog_params*, %struct.devlog_params** %6, align 8
  %84 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @G_FW_DEVLOG_CMD_MEMADDR16_DEVLOG(i32 %85)
  %87 = shl i32 %86, 4
  %88 = load %struct.devlog_params*, %struct.devlog_params** %6, align 8
  %89 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = getelementptr inbounds %struct.fw_devlog_cmd, %struct.fw_devlog_cmd* %9, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @be32_to_cpu(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.devlog_params*, %struct.devlog_params** %6, align 8
  %95 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %76, %74, %51, %24
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @PCIE_FW_REG(i32, i32) #1

declare dso_local i32 @G_PCIE_FW_PF_DEVLOG_MEMTYPE(i64) #1

declare dso_local i32 @G_PCIE_FW_PF_DEVLOG_ADDR16(i64) #1

declare dso_local i32 @G_PCIE_FW_PF_DEVLOG_NENTRIES128(i64) #1

declare dso_local i32 @memset(%struct.fw_devlog_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_devlog_cmd* byval(%struct.fw_devlog_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_devlog_cmd*, i32, %struct.fw_devlog_cmd*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @G_FW_DEVLOG_CMD_MEMTYPE_DEVLOG(i32) #1

declare dso_local i32 @G_FW_DEVLOG_CMD_MEMADDR16_DEVLOG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
