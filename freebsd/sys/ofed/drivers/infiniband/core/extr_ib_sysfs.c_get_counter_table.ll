; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_get_counter_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_get_counter_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_class_port_info = type { i32 }

@IB_PMA_CLASS_PORT_INFO = common dso_local global i32 0, align 4
@IB_PMA_CLASS_CAP_EXT_WIDTH = common dso_local global i32 0, align 4
@pma_group_ext = common dso_local global %struct.attribute_group zeroinitializer, align 4
@IB_PMA_CLASS_CAP_EXT_WIDTH_NOIETF = common dso_local global i32 0, align 4
@pma_group_noietf = common dso_local global %struct.attribute_group zeroinitializer, align 4
@pma_group = common dso_local global %struct.attribute_group zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute_group* (%struct.ib_device*, i32)* @get_counter_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute_group* @get_counter_table(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.attribute_group*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_class_port_info, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IB_PMA_CLASS_PORT_INFO, align 4
  %10 = call i64 @get_perf_mad(%struct.ib_device* %7, i32 %8, i32 %9, %struct.ib_class_port_info* %6, i32 40, i32 4)
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IB_PMA_CLASS_CAP_EXT_WIDTH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.attribute_group* @pma_group_ext, %struct.attribute_group** %3, align 8
  br label %28

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IB_PMA_CLASS_CAP_EXT_WIDTH_NOIETF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.attribute_group* @pma_group_noietf, %struct.attribute_group** %3, align 8
  br label %28

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %2
  store %struct.attribute_group* @pma_group, %struct.attribute_group** %3, align 8
  br label %28

28:                                               ; preds = %27, %25, %18
  %29 = load %struct.attribute_group*, %struct.attribute_group** %3, align 8
  ret %struct.attribute_group* %29
}

declare dso_local i64 @get_perf_mad(%struct.ib_device*, i32, i32, %struct.ib_class_port_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
