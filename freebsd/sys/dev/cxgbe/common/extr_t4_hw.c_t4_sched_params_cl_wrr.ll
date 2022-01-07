; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_params_cl_wrr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_params_cl_wrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_sched_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FW_SCHED_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_SCHED_SC_PARAMS = common dso_local global i32 0, align 4
@FW_SCHED_TYPE_PKTSCHED = common dso_local global i32 0, align 4
@FW_SCHED_PARAMS_LEVEL_CL_WRR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sched_params_cl_wrr(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fw_sched_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 100
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %65

21:                                               ; preds = %15
  %22 = call i32 @memset(%struct.fw_sched_cmd* %12, i32 0, i32 40)
  %23 = load i32, i32* @FW_SCHED_CMD, align 4
  %24 = call i32 @V_FW_CMD_OP(i32 %23)
  %25 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %12, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = call i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8 %12)
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %12, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @FW_SCHED_SC_PARAMS, align 4
  %35 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %12, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @FW_SCHED_TYPE_PKTSCHED, align 4
  %39 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %12, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @FW_SCHED_PARAMS_LEVEL_CL_WRR, align 4
  %43 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %12, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %12, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %12, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @cpu_to_be16(i32 %54)
  %56 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %12, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = load %struct.adapter*, %struct.adapter** %7, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @t4_wr_mbox_meat(%struct.adapter* %59, i32 %62, %struct.fw_sched_cmd* %12, i32 40, i32* null, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %21, %18
  %66 = load i32, i32* %6, align 4
  ret i32 %66
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
