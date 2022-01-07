; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_report_general_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_decode_report_general_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__, %struct.TYPE_15__*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i8*, i8*, i8*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__, %struct.TYPE_14__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64, i64, i64, i64, i64 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"scif_sas_smp_remote_device_decode_report_general_response(0x%x, 0x%x) enter\0A\00", align 1
@SMP_RESULT_FUNCTION_ACCEPTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Report General function result(0x%x)\0A\00", align 1
@SCI_FAILURE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCI_FAILURE_RETRY_REQUIRED = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_smp_remote_device_decode_report_general_response(%struct.TYPE_22__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store %struct.TYPE_20__* %10, %struct.TYPE_20__** %6, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %7, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = call i32 @sci_base_object_get_logger(%struct.TYPE_22__* %13)
  %15 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %16 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = ptrtoint %struct.TYPE_19__* %19 to i32
  %21 = call i32 @SCIF_LOG_TRACE(i32 %20)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SMP_RESULT_FUNCTION_ACCEPTED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = call i32 @sci_base_object_get_logger(%struct.TYPE_22__* %28)
  %30 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %31 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @SCIF_LOG_ERROR(i32 %36)
  %38 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %38, i32* %3, align 4
  br label %123

39:                                               ; preds = %2
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 5
  store i64 %42, i64* %46, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 255
  %51 = shl i32 %50, 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 65280
  %56 = ashr i32 %55, 8
  %57 = or i32 %51, %56
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 4
  store i8* %65, i8** %69, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  store i8* %73, i8** %77, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  store i8* %81, i8** %85, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %39
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @TRUE, align 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %90, %39
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = call i32 @scif_sas_smp_remote_device_populate_smp_phy_list(%struct.TYPE_22__* %112)
  br label %114

114:                                              ; preds = %111, %103
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @SCI_FAILURE_RETRY_REQUIRED, align 4
  store i32 %120, i32* %3, align 4
  br label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %119, %27
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_22__*) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

declare dso_local i32 @scif_sas_smp_remote_device_populate_smp_phy_list(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
