; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_reset_initialize_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_reset_initialize_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_8__, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"scif_sas_controller_reset_initialize_handler(0x%x) enter\0A\00", align 1
@SCI_BASE_CONTROLLER_STATE_INITIALIZING = common dso_local global i32 0, align 4
@SCI_MAX_DOMAINS = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_BASE_CONTROLLER_STATE_INITIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Controller:0x%x Status:0x%x unable to successfully initialize.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @scif_sas_controller_reset_initialize_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_controller_reset_initialize_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %8)
  %10 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %11 = load i32, i32* @SCIF_LOG_OBJECT_INITIALIZATION, align 4
  %12 = or i32 %10, %11
  %13 = load i32*, i32** %2, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @SCIF_LOG_TRACE(i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_INITIALIZING, align 4
  %20 = call i32 @sci_base_state_machine_change_state(i32* %18, i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32 @scif_sas_controller_build_mdl(%struct.TYPE_10__* %21)
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %34, %1
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @SCI_MAX_DOMAINS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @scif_sas_domain_initialize(i32* %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %23

37:                                               ; preds = %23
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = call i32 @scif_cb_lock_associate(%struct.TYPE_10__* %38, i32* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @scic_controller_initialize(i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @SCI_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_INITIALIZED, align 4
  %55 = call i32 @sci_base_state_machine_change_state(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %37
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @SCI_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = call i32 @scif_sas_controller_release_resource(%struct.TYPE_10__* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %63)
  %65 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %66 = load i32, i32* @SCIF_LOG_OBJECT_INITIALIZATION, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @SCIF_LOG_ERROR(i32 %70)
  br label %72

72:                                               ; preds = %60, %56
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_10__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @scif_sas_controller_build_mdl(%struct.TYPE_10__*) #1

declare dso_local i32 @scif_sas_domain_initialize(i32*) #1

declare dso_local i32 @scif_cb_lock_associate(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @scic_controller_initialize(i32) #1

declare dso_local i32 @scif_sas_controller_release_resource(%struct.TYPE_10__*) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
