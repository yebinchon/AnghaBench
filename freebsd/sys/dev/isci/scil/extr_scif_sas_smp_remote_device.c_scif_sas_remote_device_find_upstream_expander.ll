; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_remote_device_find_upstream_expander.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_remote_device_find_upstream_expander.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_25__*, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_24__*, i32 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"scif_sas_smp_remote_device_configure_upstream_expander_route_info(0x%x) enter\0A\00", align 1
@SUBTRACTIVE_ROUTING_ATTRIBUTE = common dso_local global i64 0, align 8
@SMP_EDGE_EXPANDER_DEVICE = common dso_local global i64 0, align 8
@SMP_FANOUT_EXPANDER_DEVICE = common dso_local global i64 0, align 8
@TABLE_ROUTING_ATTRIBUTE = common dso_local global i64 0, align 8
@SMP_FUNCTION_CONFIGURE_ROUTE_INFORMATION = common dso_local global i32 0, align 4
@SCIF_SAS_CONFIG_ROUTE_TABLE_MIDDLE_PHY_ONLY = common dso_local global i64 0, align 8
@SCIF_SAS_CONFIG_ROUTE_TABLE_HIGHEST_PHY_ONLY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @scif_sas_remote_device_find_upstream_expander(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  store %struct.TYPE_22__* %10, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = call i32 @sci_base_object_get_logger(%struct.TYPE_24__* %15)
  %17 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %18 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %21 = ptrtoint %struct.TYPE_24__* %20 to i32
  %22 = call i32 @SCIF_LOG_TRACE(i32 %21)
  br label %23

23:                                               ; preds = %140, %1
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %141

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @sci_fast_list_get_object(i32* %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @sci_fast_list_get_next(i32* %30)
  store i32* %31, i32** %6, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SUBTRACTIVE_ROUTING_ATTRIBUTE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %140

37:                                               ; preds = %26
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SMP_EDGE_EXPANDER_DEVICE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SMP_FANOUT_EXPANDER_DEVICE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %140

49:                                               ; preds = %43, %37
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = icmp ne %struct.TYPE_19__* %53, null
  br i1 %54, label %55, label %140

55:                                               ; preds = %49
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TABLE_ROUTING_ATTRIBUTE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %140

64:                                               ; preds = %55
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %69, align 8
  store %struct.TYPE_24__* %70, %struct.TYPE_24__** %5, align 8
  %71 = load i32, i32* @SMP_FUNCTION_CONFIGURE_ROUTE_INFORMATION, align 4
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = call %struct.TYPE_25__* @scif_sas_smp_remote_device_find_smp_phy_by_id(i32 %81, %struct.TYPE_22__* %89)
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  store %struct.TYPE_25__* %90, %struct.TYPE_25__** %94, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %96 = call i64 @scif_sas_smp_remote_device_get_config_route_table_method(%struct.TYPE_24__* %95)
  %97 = load i64, i64* @SCIF_SAS_CONFIG_ROUTE_TABLE_MIDDLE_PHY_ONLY, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %64
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = call %struct.TYPE_25__* @scif_sas_smp_phy_find_middle_phy_in_wide_port(%struct.TYPE_25__* %104)
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  store %struct.TYPE_25__* %105, %struct.TYPE_25__** %109, align 8
  br label %127

110:                                              ; preds = %64
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %112 = call i64 @scif_sas_smp_remote_device_get_config_route_table_method(%struct.TYPE_24__* %111)
  %113 = load i64, i64* @SCIF_SAS_CONFIG_ROUTE_TABLE_HIGHEST_PHY_ONLY, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %119, align 8
  %121 = call %struct.TYPE_25__* @scif_sas_smp_phy_find_highest_phy_in_wide_port(%struct.TYPE_25__* %120)
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  store %struct.TYPE_25__* %121, %struct.TYPE_25__** %125, align 8
  br label %126

126:                                              ; preds = %115, %110
  br label %127

127:                                              ; preds = %126, %99
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %139, %struct.TYPE_24__** %2, align 8
  br label %142

140:                                              ; preds = %55, %49, %43, %26
  br label %23

141:                                              ; preds = %23
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %2, align 8
  br label %142

142:                                              ; preds = %141, %127
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  ret %struct.TYPE_24__* %143
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_24__*) #1

declare dso_local i64 @sci_fast_list_get_object(i32*) #1

declare dso_local i32* @sci_fast_list_get_next(i32*) #1

declare dso_local %struct.TYPE_25__* @scif_sas_smp_remote_device_find_smp_phy_by_id(i32, %struct.TYPE_22__*) #1

declare dso_local i64 @scif_sas_smp_remote_device_get_config_route_table_method(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @scif_sas_smp_phy_find_middle_phy_in_wide_port(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @scif_sas_smp_phy_find_highest_phy_in_wide_port(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
