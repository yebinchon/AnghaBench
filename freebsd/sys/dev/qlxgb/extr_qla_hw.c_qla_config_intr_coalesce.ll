; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_hw.c_qla_config_intr_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_hw.c_qla_config_intr_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@Q8_FWCD_CNTRL_REQ = common dso_local global i32 0, align 4
@Q8_FWCD_OPCODE_CONFIG_INTR_COALESCING = common dso_local global i32 0, align 4
@Q8_FWCMD_INTR_COALESC_TIMER_PERIODIC = common dso_local global i32 0, align 4
@Q8_FWCMD_INTR_COALESC_SDS_RING_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @qla_config_intr_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_config_intr_coalesce(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @bzero(%struct.TYPE_6__* %7, i32 44)
  %10 = load i32, i32* @Q8_FWCD_CNTRL_REQ, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @Q8_FWCD_OPCODE_CONFIG_INTR_COALESCING, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 4, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 256, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 3, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 64, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i32 4, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store i32 1000, i32* %27, align 4
  %28 = load i32, i32* @Q8_FWCMD_INTR_COALESC_TIMER_PERIODIC, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 7
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @Q8_FWCMD_INTR_COALESC_SDS_RING_0, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %3
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @qla_fw_cmd(i32* %33, %struct.TYPE_6__* %7, i32 44)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @qla_fw_cmd(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
