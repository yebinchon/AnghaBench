; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_sas_domain_remote_device_start_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_sas_domain_remote_device_start_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_16__, %struct.TYPE_22__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_16__*, i32*)* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__, i32*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }

@SCIF_LOG_OBJECT_DOMAIN = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"scif_sas_domain_remote_device_start_complete(0x%x, 0x%x) enter\0A\00", align 1
@SCI_BASE_DOMAIN_STATE_DISCOVERING = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_domain_remote_device_start_complete(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %6 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %7 = call i32 @sci_base_object_get_logger(%struct.TYPE_25__* %6)
  %8 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %9 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %13 = ptrtoint %struct.TYPE_24__* %12 to i32
  %14 = call i32 @SCIF_LOG_TRACE(i32 %13)
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SCI_BASE_DOMAIN_STATE_DISCOVERING, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @scic_remote_device_get_protocols(i32 %26, %struct.TYPE_23__* %5)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %2
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %44 = call i32 @scif_sas_smp_remote_device_start_discover(%struct.TYPE_24__* %43)
  br label %51

45:                                               ; preds = %37
  %46 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER, align 4
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %42
  br label %63

52:                                               ; preds = %2
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %56, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = call i32 %57(%struct.TYPE_16__* %59, i32* %61)
  br label %63

63:                                               ; preds = %52, %51
  ret void
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_25__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @scic_remote_device_get_protocols(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_start_discover(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
