; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device.c_scif_remote_device_ea_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device.c_scif_remote_device_ea_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_25__, %struct.TYPE_29__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, i32, %struct.TYPE_27__*, i32, %struct.TYPE_22__, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 (i32*)* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"scif_remote_device_ea_construct(0x%x, 0x%x) enter\0A\00", align 1
@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@SCI_FAILURE_DEVICE_EXISTS = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Domain:0x%x SasAddress:0x%x,0x%x remote device constructed\0A\00", align 1
@SCI_SATA_SPINUP_HOLD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [78 x i8] c"Domain:0x%x SasAddress:0x%x,0x%x Status:0x%x remote device construct failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_remote_device_ea_construct(i64 %0, i64 %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %6, align 8
  %11 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %9, align 8
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %10, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 6
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %18, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 1
  store %struct.TYPE_29__* %27, %struct.TYPE_29__** %7, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = call i32 @sci_base_object_get_logger(%struct.TYPE_19__* %28)
  %30 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %33 = ptrtoint %struct.TYPE_28__* %32 to i32
  %34 = call i32 @SCIF_LOG_TRACE(i32 %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %39 = call i64 @scif_domain_get_device_by_sas_address(%struct.TYPE_20__* %37, %struct.TYPE_29__* %38)
  %40 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %47 = call i64 @scic_remote_device_ea_construct(i32 %45, %struct.TYPE_28__* %46)
  store i64 %47, i64* %8, align 8
  br label %50

48:                                               ; preds = %3
  %49 = load i64, i64* @SCI_FAILURE_DEVICE_EXISTS, align 8
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @SCI_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %116

54:                                               ; preds = %50
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %60 = call i32 @sci_abstract_list_pushback(i32* %58, %struct.TYPE_19__* %59)
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = call i32 @scif_sas_smp_remote_device_construct(%struct.TYPE_19__* %69)
  br label %83

71:                                               ; preds = %54
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %81 = call i32 @scif_sas_stp_remote_device_construct(%struct.TYPE_19__* %80)
  br label %82

82:                                               ; preds = %79, %71
  br label %83

83:                                               ; preds = %82, %68
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = call i32 @sci_base_object_get_logger(%struct.TYPE_19__* %84)
  %86 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %87 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @SCIF_LOG_INFO(i32 %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @scic_remote_device_get_connection_rate(i32 %101)
  %103 = load i64, i64* @SCI_SATA_SPINUP_HOLD, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %83
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i64 (i32*)*, i64 (i32*)** %110, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = call i64 %111(i32* %113)
  store i64 %114, i64* %8, align 8
  br label %115

115:                                              ; preds = %105, %83
  br label %134

116:                                              ; preds = %50
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %118 = call i32 @sci_base_object_get_logger(%struct.TYPE_19__* %117)
  %119 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %120 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %8, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @SCIF_LOG_WARNING(i32 %132)
  br label %134

134:                                              ; preds = %116, %115
  %135 = load i64, i64* %8, align 8
  ret i64 %135
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_19__*) #1

declare dso_local i64 @scif_domain_get_device_by_sas_address(%struct.TYPE_20__*, %struct.TYPE_29__*) #1

declare dso_local i64 @scic_remote_device_ea_construct(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @sci_abstract_list_pushback(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_construct(%struct.TYPE_19__*) #1

declare dso_local i32 @scif_sas_stp_remote_device_construct(%struct.TYPE_19__*) #1

declare dso_local i32 @SCIF_LOG_INFO(i32) #1

declare dso_local i64 @scic_remote_device_get_connection_rate(i32) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
