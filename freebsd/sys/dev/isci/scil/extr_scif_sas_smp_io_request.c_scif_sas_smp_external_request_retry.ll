; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_io_request.c_scif_sas_smp_external_request_retry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_io_request.c_scif_sas_smp_external_request_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"scif_sas_smp_external_request_retry(0x%x) time %d!\0A\00", align 1
@PHY_OPERATION_HARD_RESET = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i32 0, align 4
@scif_sas_controller_start_high_priority_io = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_smp_external_request_retry(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %12, %struct.TYPE_23__** %4, align 8
  store i8* null, i8** %7, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = call i32 @sci_base_object_get_logger(%struct.TYPE_23__* %16)
  %18 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %19 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %22 = ptrtoint %struct.TYPE_24__* %21 to i32
  %23 = call i32 @SCIF_LOG_TRACE(i32 %22)
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %5, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = call i32 @sci_fast_list_remove_element(i32* %31)
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %67 [
    i32 129, label %38
    i32 128, label %52
  ]

38:                                               ; preds = %1
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %47 = call i64 @sci_object_get_association(%struct.TYPE_24__* %46)
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %50 = bitcast %struct.TYPE_24__* %49 to i8*
  %51 = call i8* @scif_sas_smp_request_construct_discover(%struct.TYPE_25__* %39, %struct.TYPE_23__* %40, i32 %45, i8* %48, i8* %50)
  store i8* %51, i8** %7, align 8
  br label %69

52:                                               ; preds = %1
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = load i32, i32* @PHY_OPERATION_HARD_RESET, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = call i64 @sci_object_get_association(%struct.TYPE_24__* %61)
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %65 = bitcast %struct.TYPE_24__* %64 to i8*
  %66 = call i8* @scif_sas_smp_request_construct_phy_control(%struct.TYPE_25__* %53, %struct.TYPE_23__* %54, i32 %55, i32 %60, i8* %63, i8* %65)
  store i8* %66, i8** %7, align 8
  br label %69

67:                                               ; preds = %1
  %68 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %68, i32* %2, align 4
  br label %88

69:                                               ; preds = %52, %38
  %70 = load i8*, i8** %7, align 8
  %71 = bitcast i8* %70 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %8, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = ptrtoint i8* %80 to i32
  %82 = call i32 @sci_pool_put(i32 %79, i32 %81)
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %84 = load i32, i32* @scif_sas_controller_start_high_priority_io, align 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = call i32 @scif_cb_start_internal_io_task_schedule(%struct.TYPE_25__* %83, i32 %84, %struct.TYPE_25__* %85)
  %87 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %69, %67
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_23__*) #1

declare dso_local i32 @sci_fast_list_remove_element(i32*) #1

declare dso_local i8* @scif_sas_smp_request_construct_discover(%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i8*, i8*) #1

declare dso_local i64 @sci_object_get_association(%struct.TYPE_24__*) #1

declare dso_local i8* @scif_sas_smp_request_construct_phy_control(%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @sci_pool_put(i32, i32) #1

declare dso_local i32 @scif_cb_start_internal_io_task_schedule(%struct.TYPE_25__*, i32, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
