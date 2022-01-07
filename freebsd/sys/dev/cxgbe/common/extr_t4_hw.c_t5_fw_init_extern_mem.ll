; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t5_fw_init_extern_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t5_fw_init_extern_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }

@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_MCINIT = common dso_local global i32 0, align 4
@FW_CMD_MAX_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t5_fw_init_extern_mem(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca [1 x i32], align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = call i32 @is_t5(%struct.adapter* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  store i32 255, i32* %12, align 4
  %13 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %14 = call i32 @V_FW_PARAMS_MNEM(i32 %13)
  %15 = load i32, i32* @FW_PARAMS_PARAM_DEV_MCINIT, align 4
  %16 = call i32 @V_FW_PARAMS_PARAM_X(i32 %15)
  %17 = or i32 %14, %16
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %28 = load i32, i32* @FW_CMD_MAX_TIMEOUT, align 4
  %29 = call i32 @t4_set_params_timeout(%struct.adapter* %19, i32 %22, i32 %25, i32 0, i32 1, i32* %26, i32* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %11, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @is_t5(%struct.adapter*) #1

declare dso_local i32 @V_FW_PARAMS_MNEM(i32) #1

declare dso_local i32 @V_FW_PARAMS_PARAM_X(i32) #1

declare dso_local i32 @t4_set_params_timeout(%struct.adapter*, i32, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
