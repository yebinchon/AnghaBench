; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_io_request.c_scif_sas_smp_request_construct_config_route_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_io_request.c_scif_sas_smp_request_construct_config_route_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SCIF_SAS_CONTROLLER = type { i32 }
%struct.SCIF_SAS_REMOTE_DEVICE = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32 }

@SMP_FUNCTION_CONFIGURE_ROUTE_INFORMATION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scif_sas_smp_request_construct_config_route_info(%struct.SCIF_SAS_CONTROLLER* %0, %struct.SCIF_SAS_REMOTE_DEVICE* %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.SCIF_SAS_CONTROLLER*, align 8
  %9 = alloca %struct.SCIF_SAS_REMOTE_DEVICE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = bitcast %struct.TYPE_11__* %7 to i64*
  store i64 %4, i64* %14, align 4
  store %struct.SCIF_SAS_CONTROLLER* %0, %struct.SCIF_SAS_CONTROLLER** %8, align 8
  store %struct.SCIF_SAS_REMOTE_DEVICE* %1, %struct.SCIF_SAS_REMOTE_DEVICE** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* @SMP_FUNCTION_CONFIGURE_ROUTE_INFORMATION, align 4
  %16 = call i32 @scif_sas_smp_protocol_request_construct(%struct.TYPE_10__* %13, i32 %15, i32 0, i32 1)
  %17 = load i32, i32* %10, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = and i32 %21, 65280
  %23 = ashr i32 %22, 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %33, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %40, i32* %45, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @TRUE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %6
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %6
  %54 = load %struct.SCIF_SAS_CONTROLLER*, %struct.SCIF_SAS_CONTROLLER** %8, align 8
  %55 = load %struct.SCIF_SAS_REMOTE_DEVICE*, %struct.SCIF_SAS_REMOTE_DEVICE** %9, align 8
  %56 = call i8* @scif_sas_smp_request_build(%struct.SCIF_SAS_CONTROLLER* %54, %struct.SCIF_SAS_REMOTE_DEVICE* %55, %struct.TYPE_10__* %13, i32* null, i32* null)
  ret i8* %56
}

declare dso_local i32 @scif_sas_smp_protocol_request_construct(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i8* @scif_sas_smp_request_build(%struct.SCIF_SAS_CONTROLLER*, %struct.SCIF_SAS_REMOTE_DEVICE*, %struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
