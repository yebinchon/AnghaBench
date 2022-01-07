; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_26__*, i32, %struct.TYPE_38__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 (i32*)* }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_28__, %struct.TYPE_31__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_24__, %struct.TYPE_36__, %struct.TYPE_33__ }
%struct.TYPE_24__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i64, i64 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response(0x%x, 0x%x) enter\0A\00", align 1
@SMP_RESULT_FUNCTION_ACCEPTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Discover function result(0x%x)\0A\00", align 1
@SCI_FAILURE = common dso_local global i32 0, align 4
@SMP_NO_DEVICE_ATTACHED = common dso_local global i64 0, align 8
@SCI_SATA_SPINUP_HOLD = common dso_local global i64 0, align 8
@SCI_FAILURE_RETRY_REQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response(%struct.TYPE_30__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  store %struct.TYPE_29__* %11, %struct.TYPE_29__** %6, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  store %struct.TYPE_28__* %13, %struct.TYPE_28__** %7, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %15 = call i32 @sci_base_object_get_logger(%struct.TYPE_30__* %14)
  %16 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %17 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %21 = ptrtoint %struct.TYPE_27__* %20 to i32
  %22 = call i32 @SCIF_LOG_TRACE(i32 %21)
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SMP_RESULT_FUNCTION_ACCEPTED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %30 = call i32 @sci_base_object_get_logger(%struct.TYPE_30__* %29)
  %31 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %32 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @SCIF_LOG_ERROR(i32 %37)
  %39 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %39, i32* %3, align 4
  br label %116

40:                                               ; preds = %2
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SMP_NO_DEVICE_ATTACHED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %114

48:                                               ; preds = %40
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SCI_SATA_SPINUP_HOLD, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %112

56:                                               ; preds = %48
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SCI_SATA_SPINUP_HOLD, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %56
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %72, %64
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.TYPE_30__* @scif_sas_domain_get_device_by_containing_device(i32 %83, %struct.TYPE_30__* %84, i32 %89)
  store %struct.TYPE_30__* %90, %struct.TYPE_30__** %8, align 8
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @scic_remote_device_set_max_connection_rate(i32 %93, i64 %98)
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %102 = call i32 @scif_sas_smp_remote_device_save_smp_phy_info(%struct.TYPE_30__* %100, %struct.TYPE_29__* %101)
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i32 (i32*)*, i32 (i32*)** %107, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 0
  %111 = call i32 %108(i32* %110)
  store i32 %111, i32* %3, align 4
  br label %116

112:                                              ; preds = %72, %56, %48
  %113 = load i32, i32* @SCI_FAILURE_RETRY_REQUIRED, align 4
  store i32 %113, i32* %3, align 4
  br label %116

114:                                              ; preds = %40
  %115 = load i32, i32* @SCI_FAILURE_RETRY_REQUIRED, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %112, %80, %28
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_30__*) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

declare dso_local %struct.TYPE_30__* @scif_sas_domain_get_device_by_containing_device(i32, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @scic_remote_device_set_max_connection_rate(i32, i64) #1

declare dso_local i32 @scif_sas_smp_remote_device_save_smp_phy_info(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
