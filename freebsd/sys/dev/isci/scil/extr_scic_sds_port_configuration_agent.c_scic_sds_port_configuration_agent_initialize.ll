; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_port_configuration_agent_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port_configuration_agent.c_scic_sds_port_configuration_agent_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32*, i32, i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"scic_sds_port_configuration_agent_initialize(0x%08x, 0x%08x) enter\0A\00", align 1
@SCIC_PORT_MANUAL_CONFIGURATION_MODE = common dso_local global i32 0, align 4
@scic_sds_mpc_agent_link_up = common dso_local global i32 0, align 4
@scic_sds_mpc_agent_link_down = common dso_local global i32 0, align 4
@scic_sds_mpc_agent_timeout_handler = common dso_local global i32 0, align 4
@scic_sds_apc_agent_link_up = common dso_local global i32 0, align 4
@scic_sds_apc_agent_link_down = common dso_local global i32 0, align 4
@scic_sds_apc_agent_timeout_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Controller 0x%x automatic port configuration agent could not get timer.\0A\00", align 1
@SCI_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_sds_port_configuration_agent_initialize(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %7 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = call i32 @sci_base_object_get_logger(%struct.TYPE_19__* %8)
  %10 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %11 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = ptrtoint %struct.TYPE_18__* %14 to i32
  %16 = call i32 @SCIC_LOG_TRACE(i32 %15)
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SCIC_PORT_MANUAL_CONFIGURATION_MODE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = call i64 @scic_sds_mpc_agent_validate_phy_configuration(%struct.TYPE_19__* %27, %struct.TYPE_18__* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i32, i32* @scic_sds_mpc_agent_link_up, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @scic_sds_mpc_agent_link_down, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = load i32, i32* @scic_sds_mpc_agent_timeout_handler, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = call i8* @scic_cb_timer_create(%struct.TYPE_19__* %36, i32 %37, %struct.TYPE_19__* %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  br label %60

43:                                               ; preds = %2
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = call i64 @scic_sds_apc_agent_validate_phy_configuration(%struct.TYPE_19__* %44, %struct.TYPE_18__* %45)
  store i64 %46, i64* %5, align 8
  %47 = load i32, i32* @scic_sds_apc_agent_link_up, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @scic_sds_apc_agent_link_down, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = load i32, i32* @scic_sds_apc_agent_timeout_handler, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = call i8* @scic_cb_timer_create(%struct.TYPE_19__* %53, i32 %54, %struct.TYPE_19__* %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  br label %60

60:                                               ; preds = %43, %26
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @SCI_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = call i32 @sci_base_object_get_logger(%struct.TYPE_19__* %70)
  %72 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = ptrtoint %struct.TYPE_19__* %73 to i32
  %75 = call i32 @SCIC_LOG_ERROR(i32 %74)
  %76 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %69, %64, %60
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_19__*) #1

declare dso_local i64 @scic_sds_mpc_agent_validate_phy_configuration(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i8* @scic_cb_timer_create(%struct.TYPE_19__*, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @scic_sds_apc_agent_validate_phy_configuration(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
