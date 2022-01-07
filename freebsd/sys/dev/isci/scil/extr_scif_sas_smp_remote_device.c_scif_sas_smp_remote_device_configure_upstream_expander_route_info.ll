; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_configure_upstream_expander_route_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_configure_upstream_expander_route_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_16__*, i64, %struct.TYPE_13__, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"scif_sas_smp_remote_device_configure_upstream_expander_route_info(0x%x) enter\0A\00", align 1
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_smp_remote_device_configure_upstream_expander_route_info(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = call %struct.TYPE_17__* @scif_sas_remote_device_find_upstream_expander(%struct.TYPE_17__* %9)
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = call i32 @sci_base_object_get_logger(%struct.TYPE_17__* %11)
  %13 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %14 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = ptrtoint %struct.TYPE_17__* %16 to i32
  %18 = call i32 @SCIF_LOG_TRACE(i32 %17)
  br label %19

19:                                               ; preds = %22, %1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = icmp ne %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @sci_fast_list_get_object(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_16__*
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 6
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %3, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = call %struct.TYPE_17__* @scif_sas_remote_device_find_upstream_expander(%struct.TYPE_17__* %36)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %4, align 8
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %5, align 8
  br label %40

40:                                               ; preds = %129, %38
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = icmp ne %struct.TYPE_17__* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = icmp ne %struct.TYPE_17__* %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %47, %43, %40
  %56 = phi i1 [ false, %43 ], [ false, %40 ], [ %54, %47 ]
  br i1 %56, label %57, label %130

57:                                               ; preds = %55
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %57
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %6, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %64
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %64
  %91 = load i64, i64* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = call %struct.TYPE_17__* @scif_sas_remote_device_find_downstream_expander(%struct.TYPE_17__* %96)
  store %struct.TYPE_17__* %97, %struct.TYPE_17__** %5, align 8
  br label %129

98:                                               ; preds = %57
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %98
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = call %struct.TYPE_17__* @scif_sas_remote_device_find_downstream_expander(%struct.TYPE_17__* %106)
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %7, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = call i32 @scif_sas_smp_remote_device_clear(%struct.TYPE_17__* %108)
  br label %110

110:                                              ; preds = %119, %105
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = icmp ne %struct.TYPE_17__* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %116 = icmp ne %struct.TYPE_17__* %114, %115
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i1 [ false, %110 ], [ %116, %113 ]
  br i1 %118, label %119, label %124

119:                                              ; preds = %117
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %121 = call i32 @scif_sas_smp_remote_device_clear(%struct.TYPE_17__* %120)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = call %struct.TYPE_17__* @scif_sas_remote_device_find_downstream_expander(%struct.TYPE_17__* %122)
  store %struct.TYPE_17__* %123, %struct.TYPE_17__** %7, align 8
  br label %110

124:                                              ; preds = %117
  br label %130

125:                                              ; preds = %98
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = call %struct.TYPE_17__* @scif_sas_remote_device_find_downstream_expander(%struct.TYPE_17__* %126)
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %5, align 8
  br label %128

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %128, %90
  br label %40

130:                                              ; preds = %124, %55
  ret void
}

declare dso_local %struct.TYPE_17__* @scif_sas_remote_device_find_upstream_expander(%struct.TYPE_17__*) #1

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_17__*) #1

declare dso_local i64 @sci_fast_list_get_object(i32) #1

declare dso_local %struct.TYPE_17__* @scif_sas_remote_device_find_downstream_expander(%struct.TYPE_17__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_clear(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
