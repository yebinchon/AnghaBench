; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_save_smp_phy_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_save_smp_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_26__*, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"scif_sas_smp_remote_device_save_smp_phy_info(0x%x, 0x%x) enter\0A\00", align 1
@SCI_FAILURE_ILLEGAL_ROUTING_ATTRIBUTE_CONFIGURATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_sas_smp_remote_device_save_smp_phy_info(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %9 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %9, i64* %6, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = call i32 @sci_base_object_get_logger(%struct.TYPE_26__* %10)
  %12 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %13 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = ptrtoint %struct.TYPE_24__* %16 to i32
  %18 = call i32 @SCIF_LOG_TRACE(i32 %17)
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = call %struct.TYPE_25__* @scif_sas_smp_remote_device_find_smp_phy_by_id(i32 %21, i32* %24)
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %7, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = icmp ne %struct.TYPE_25__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = call i64 @scif_domain_get_device_by_sas_address(i32 %32, i32* %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %36, %struct.TYPE_26__** %8, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = call i32 @scif_sas_smp_phy_save_information(%struct.TYPE_25__* %37, %struct.TYPE_26__* %38, %struct.TYPE_24__* %39)
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %2
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %50 = icmp ne %struct.TYPE_26__* %49, null
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %54, align 8
  %56 = icmp eq %struct.TYPE_26__* %52, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %51
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %63 = call i64 @scif_sas_smp_phy_set_attached_phy(%struct.TYPE_25__* %58, i32 %61, %struct.TYPE_26__* %62)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @SCI_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @scif_sas_smp_phy_verify_routing_attribute(%struct.TYPE_25__* %68, i32 %72)
  %74 = load i64, i64* @SCI_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i64, i64* @SCI_FAILURE_ILLEGAL_ROUTING_ATTRIBUTE_CONFIGURATION, align 8
  store i64 %77, i64* %3, align 8
  br label %83

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %57
  br label %80

80:                                               ; preds = %79, %51, %48
  br label %81

81:                                               ; preds = %80, %2
  %82 = load i64, i64* %6, align 8
  store i64 %82, i64* %3, align 8
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @scif_sas_smp_remote_device_find_smp_phy_by_id(i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @scif_domain_get_device_by_sas_address(i32, i32*) #1

declare dso_local i32 @scif_sas_smp_phy_save_information(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i64 @scif_sas_smp_phy_set_attached_phy(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @scif_sas_smp_phy_verify_routing_attribute(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
