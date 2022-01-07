; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_read_pcie_cfg4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_read_pcie_cfg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@FW_LDST_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_READ = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_FUNC_PCIE = common dso_local global i32 0, align 4
@F_FW_LDST_CMD_LC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Firmware failed to return Configuration Space register %d, err = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_read_pcie_cfg4(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_ldst_cmd, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %3
  %13 = call i32 @memset(%struct.fw_ldst_cmd* %8, i32 0, i32 40)
  %14 = load i32, i32* @FW_LDST_CMD, align 4
  %15 = call i32 @V_FW_CMD_OP(i32 %14)
  %16 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @F_FW_CMD_READ, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FW_LDST_ADDRSPC_FUNC_PCIE, align 4
  %21 = call i32 @V_FW_LDST_CMD_ADDRSPACE(i32 %20)
  %22 = or i32 %19, %21
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %8, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %8)
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %8, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = call i32 @V_FW_LDST_CMD_NACCESS(i32 1)
  %29 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %8, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @F_FW_LDST_CMD_LC, align 4
  %33 = load %struct.adapter*, %struct.adapter** %5, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @V_FW_LDST_CMD_FN(i32 %35)
  %37 = or i32 %32, %36
  %38 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = load %struct.adapter*, %struct.adapter** %5, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @t4_wr_mbox(%struct.adapter* %45, i32 %48, %struct.fw_ldst_cmd* %8, i32 40, %struct.fw_ldst_cmd* %8)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %12
  %53 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %8, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %12
  %61 = load %struct.adapter*, %struct.adapter** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @CH_WARN(%struct.adapter* %61, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %60, %3
  %67 = load %struct.adapter*, %struct.adapter** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @t4_hw_pci_read_cfg4(%struct.adapter* %67, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %52
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_LDST_CMD_ADDRSPACE(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @V_FW_LDST_CMD_NACCESS(i32) #1

declare dso_local i32 @V_FW_LDST_CMD_FN(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32, i32) #1

declare dso_local i32 @t4_hw_pci_read_cfg4(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
