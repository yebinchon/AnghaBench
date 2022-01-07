; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4vf_hw.c_t4vf_get_vfres.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4vf_hw.c_t4vf_get_vfres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vf_resources }
%struct.vf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_pfvf_cmd = type { i32, i32, i32, i32, i8*, i8* }

@FW_PFVF_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_READ = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_get_vfres(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.vf_resources*, align 8
  %5 = alloca %struct.fw_pfvf_cmd, align 8
  %6 = alloca %struct.fw_pfvf_cmd, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.vf_resources* %11, %struct.vf_resources** %4, align 8
  %12 = call i32 @memset(%struct.fw_pfvf_cmd* %5, i32 0, i32 32)
  %13 = load i32, i32* @FW_PFVF_CMD, align 4
  %14 = call i32 @V_FW_CMD_OP(i32 %13)
  %15 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @F_FW_CMD_READ, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %5, i32 0, i32 5
  store i8* %19, i8** %20, align 8
  %21 = call i32 @FW_LEN16(%struct.fw_pfvf_cmd* byval(%struct.fw_pfvf_cmd) align 8 %5)
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %5, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = call i32 @t4vf_wr_mbox(%struct.adapter* %24, %struct.fw_pfvf_cmd* %5, i32 32, %struct.fw_pfvf_cmd* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @FW_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %84

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @G_FW_PFVF_CMD_NIQFLINT(i32 %35)
  %37 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %38 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @G_FW_PFVF_CMD_NIQ(i32 %39)
  %41 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %42 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @be32_to_cpu(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @G_FW_PFVF_CMD_NEQ(i32 %46)
  %48 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %49 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @G_FW_PFVF_CMD_PMASK(i32 %50)
  %52 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %53 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @G_FW_PFVF_CMD_TC(i32 %57)
  %59 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %60 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @G_FW_PFVF_CMD_NVI(i32 %61)
  %63 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %64 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @G_FW_PFVF_CMD_NEXACTF(i32 %65)
  %67 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %68 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @be32_to_cpu(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @G_FW_PFVF_CMD_R_CAPS(i32 %72)
  %74 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %75 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @G_FW_PFVF_CMD_WX_CAPS(i32 %76)
  %78 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %79 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @G_FW_PFVF_CMD_NETHCTRL(i32 %80)
  %82 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %83 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %31, %29
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @memset(%struct.fw_pfvf_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_pfvf_cmd* byval(%struct.fw_pfvf_cmd) align 8) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_pfvf_cmd*, i32, %struct.fw_pfvf_cmd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_NIQFLINT(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_NIQ(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_NEQ(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_PMASK(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_TC(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_NVI(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_NEXACTF(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_R_CAPS(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_WX_CAPS(i32) #1

declare dso_local i32 @G_FW_PFVF_CMD_NETHCTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
