; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_mdio_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_mdio_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }

@FW_LDST_ADDRSPC_MDIO = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_mdio_rd(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fw_ldst_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = call i32 @memset(%struct.fw_ldst_cmd* %15, i32 0, i32 40)
  %17 = load i32, i32* @FW_LDST_ADDRSPC_MDIO, align 4
  %18 = call i32 @V_FW_LDST_CMD_ADDRSPACE(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @FW_LDST_CMD, align 4
  %20 = call i32 @V_FW_CMD_OP(i32 %19)
  %21 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @F_FW_CMD_READ, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %14, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %15, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %15)
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %15, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @V_FW_LDST_CMD_PADDR(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @V_FW_LDST_CMD_MMD(i32 %34)
  %36 = or i32 %33, %35
  %37 = call i8* @cpu_to_be16(i32 %36)
  %38 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %15, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @cpu_to_be16(i32 %41)
  %43 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %15, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @t4_wr_mbox(%struct.adapter* %46, i32 %47, %struct.fw_ldst_cmd* %15, i32 40, %struct.fw_ldst_cmd* %15)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %6
  %52 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %15, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @be16_to_cpu(i32 %55)
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %6
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i32 @V_FW_LDST_CMD_ADDRSPACE(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @V_FW_LDST_CMD_PADDR(i32) #1

declare dso_local i32 @V_FW_LDST_CMD_MMD(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
