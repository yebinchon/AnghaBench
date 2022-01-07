; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_set_queues_placement_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_set_queues_placement_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, i64, i32 }
%struct.ena_admin_feature_llq_desc = type { i32 }
%struct.ena_llq_configurations = type { i32 }
%struct.ena_adapter = type { i32* }

@ENA_ADMIN_LLQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"LLQ is not supported. Fallback to host mode policy.\0A\00", align 1
@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"Failed to configure the device mode. Fallback to host mode policy.\0A\00", align 1
@ENA_MEM_BAR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"unable to allocate LLQ bar resource. Fallback to host mode policy.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to enable write combining.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ena_com_dev*, %struct.ena_admin_feature_llq_desc*, %struct.ena_llq_configurations*)* @ena_set_queues_placement_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_set_queues_placement_policy(i32 %0, %struct.ena_com_dev* %1, %struct.ena_admin_feature_llq_desc* %2, %struct.ena_llq_configurations* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ena_com_dev*, align 8
  %8 = alloca %struct.ena_admin_feature_llq_desc*, align 8
  %9 = alloca %struct.ena_llq_configurations*, align 8
  %10 = alloca %struct.ena_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.ena_com_dev* %1, %struct.ena_com_dev** %7, align 8
  store %struct.ena_admin_feature_llq_desc* %2, %struct.ena_admin_feature_llq_desc** %8, align 8
  store %struct.ena_llq_configurations* %3, %struct.ena_llq_configurations** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.ena_adapter* @device_get_softc(i32 %14)
  store %struct.ena_adapter* %15, %struct.ena_adapter** %10, align 8
  %16 = load i32, i32* @ENA_ADMIN_LLQ, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %19 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %13, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %28 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %29 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  store i32 0, i32* %5, align 4
  br label %96

30:                                               ; preds = %4
  %31 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %32 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %8, align 8
  %33 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %9, align 8
  %34 = call i32 @ena_com_config_dev_mode(%struct.ena_com_dev* %31, %struct.ena_admin_feature_llq_desc* %32, %struct.ena_llq_configurations* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %44 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %45 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  store i32 0, i32* %5, align 4
  br label %96

46:                                               ; preds = %30
  %47 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %48 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %96

53:                                               ; preds = %46
  %54 = load i32, i32* @ENA_MEM_BAR, align 4
  %55 = call i32 @PCIR_BAR(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SYS_RES_MEMORY, align 4
  %58 = load i32, i32* @RF_ACTIVE, align 4
  %59 = call i32* @bus_alloc_resource_any(i32 %56, i32 %57, i32* %12, i32 %58)
  %60 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %61 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %63 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %53
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %73 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %74 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  store i32 0, i32* %5, align 4
  br label %96

75:                                               ; preds = %53
  %76 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %77 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ena_enable_wc(i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %96

89:                                               ; preds = %75
  %90 = load %struct.ena_adapter*, %struct.ena_adapter** %10, align 8
  %91 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @rman_get_virtual(i32* %92)
  %94 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %95 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %89, %85, %69, %52, %40, %24
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.ena_adapter* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ena_com_config_dev_mode(%struct.ena_com_dev*, %struct.ena_admin_feature_llq_desc*, %struct.ena_llq_configurations*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @ena_enable_wc(i32*) #1

declare dso_local i32 @rman_get_virtual(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
