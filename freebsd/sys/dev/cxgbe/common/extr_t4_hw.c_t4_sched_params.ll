; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sched_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_sched_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }

@FW_SCHED_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_SCHED_SC_PARAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sched_params(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.adapter*, align 8
  %16 = alloca i32, align 4
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
  %29 = alloca %struct.fw_sched_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %30 = call i32 @memset(%struct.fw_sched_cmd* %29, i32 0, i32 96)
  %31 = load i32, i32* @FW_SCHED_CMD, align 4
  %32 = call i32 @V_FW_CMD_OP(i32 %31)
  %33 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = call i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8 %29)
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* @FW_SCHED_SC_PARAMS, align 4
  %43 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 12
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %16, align 4
  %47 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* %17, align 4
  %51 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %18, align 4
  %55 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %21, align 4
  %59 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %22, align 4
  %63 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %19, align 4
  %67 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %20, align 4
  %71 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 6
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %23, align 4
  %75 = call i8* @cpu_to_be32(i32 %74)
  %76 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 11
  store i8* %75, i8** %78, align 8
  %79 = load i32, i32* %24, align 4
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 10
  store i8* %80, i8** %83, align 8
  %84 = load i32, i32* %25, align 4
  %85 = call i8* @cpu_to_be16(i32 %84)
  %86 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 9
  store i8* %85, i8** %88, align 8
  %89 = load i32, i32* %26, align 4
  %90 = call i8* @cpu_to_be16(i32 %89)
  %91 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 8
  store i8* %90, i8** %93, align 8
  %94 = load i32, i32* %27, align 4
  %95 = call i8* @cpu_to_be16(i32 %94)
  %96 = getelementptr inbounds %struct.fw_sched_cmd, %struct.fw_sched_cmd* %29, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 7
  store i8* %95, i8** %98, align 8
  %99 = load %struct.adapter*, %struct.adapter** %15, align 8
  %100 = load %struct.adapter*, %struct.adapter** %15, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %28, align 4
  %104 = call i32 @t4_wr_mbox_meat(%struct.adapter* %99, i32 %102, %struct.fw_sched_cmd* %29, i32 96, i32* null, i32 %103)
  ret i32 %104
}

declare dso_local i32 @memset(%struct.fw_sched_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_sched_cmd* byval(%struct.fw_sched_cmd) align 8) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_sched_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
