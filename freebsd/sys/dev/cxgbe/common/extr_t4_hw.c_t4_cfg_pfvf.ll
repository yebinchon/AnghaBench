; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_cfg_pfvf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_cfg_pfvf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_pfvf_cmd = type { i8*, i8*, i8*, i8*, i8*, i8* }

@FW_PFVF_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_cfg_pfvf(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca %struct.adapter*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.fw_pfvf_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 %14, i32* %30, align 4
  %32 = call i32 @memset(%struct.fw_pfvf_cmd* %31, i32 0, i32 48)
  %33 = load i32, i32* @FW_PFVF_CMD, align 4
  %34 = call i32 @V_FW_CMD_OP(i32 %33)
  %35 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %18, align 4
  %40 = call i32 @V_FW_PFVF_CMD_PFN(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* %19, align 4
  %43 = call i32 @V_FW_PFVF_CMD_VFN(i32 %42)
  %44 = or i32 %41, %43
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %31, i32 0, i32 5
  store i8* %45, i8** %46, align 8
  %47 = call i32 @FW_LEN16(%struct.fw_pfvf_cmd* byval(%struct.fw_pfvf_cmd) align 8 %31)
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %31, i32 0, i32 4
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %22, align 4
  %51 = call i32 @V_FW_PFVF_CMD_NIQFLINT(i32 %50)
  %52 = load i32, i32* %23, align 4
  %53 = call i32 @V_FW_PFVF_CMD_NIQ(i32 %52)
  %54 = or i32 %51, %53
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %31, i32 0, i32 3
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %26, align 4
  %58 = call i32 @V_FW_PFVF_CMD_CMASK(i32 %57)
  %59 = load i32, i32* %27, align 4
  %60 = call i32 @V_FW_PFVF_CMD_PMASK(i32 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @V_FW_PFVF_CMD_NEQ(i32 %62)
  %64 = or i32 %61, %63
  %65 = call i8* @cpu_to_be32(i32 %64)
  %66 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %31, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @V_FW_PFVF_CMD_TC(i32 %67)
  %69 = load i32, i32* %25, align 4
  %70 = call i32 @V_FW_PFVF_CMD_NVI(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* %28, align 4
  %73 = call i32 @V_FW_PFVF_CMD_NEXACTF(i32 %72)
  %74 = or i32 %71, %73
  %75 = call i8* @cpu_to_be32(i32 %74)
  %76 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %31, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %29, align 4
  %78 = call i32 @V_FW_PFVF_CMD_R_CAPS(i32 %77)
  %79 = load i32, i32* %30, align 4
  %80 = call i32 @V_FW_PFVF_CMD_WX_CAPS(i32 %79)
  %81 = or i32 %78, %80
  %82 = load i32, i32* %21, align 4
  %83 = call i32 @V_FW_PFVF_CMD_NETHCTRL(i32 %82)
  %84 = or i32 %81, %83
  %85 = call i8* @cpu_to_be32(i32 %84)
  %86 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %31, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = load %struct.adapter*, %struct.adapter** %16, align 8
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @t4_wr_mbox(%struct.adapter* %87, i32 %88, %struct.fw_pfvf_cmd* %31, i32 48, i32* null)
  ret i32 %89
}

declare dso_local i32 @memset(%struct.fw_pfvf_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_PFN(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_VFN(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_pfvf_cmd* byval(%struct.fw_pfvf_cmd) align 8) #1

declare dso_local i32 @V_FW_PFVF_CMD_NIQFLINT(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_NIQ(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_CMASK(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_PMASK(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_NEQ(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_TC(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_NVI(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_NEXACTF(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_R_CAPS(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_WX_CAPS(i32) #1

declare dso_local i32 @V_FW_PFVF_CMD_NETHCTRL(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_pfvf_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
