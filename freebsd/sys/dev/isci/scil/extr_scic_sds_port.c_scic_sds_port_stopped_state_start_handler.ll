; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_stopped_state_start_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_stopped_state_start_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION = common dso_local global i64 0, align 8
@scic_sds_port_timeout_handler = common dso_local global i32 0, align 4
@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@SCI_FAILURE_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@SCU_DUMMY_INDEX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SCI_BASE_PORT_STATE_READY = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @scic_sds_port_stopped_state_start_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_port_stopped_state_start_handler(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION, align 8
  store i64 %15, i64* %2, align 8
  br label %120

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = call i32 @scic_sds_port_get_controller(%struct.TYPE_13__* %17)
  %19 = load i32, i32* @scic_sds_port_timeout_handler, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = call i64 @scic_cb_timer_create(i32 %18, i32 %19, %struct.TYPE_13__* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i64, i64* @SCI_FAILURE_INSUFFICIENT_RESOURCES, align 8
  store i64 %30, i64* %2, align 8
  br label %120

31:                                               ; preds = %16
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = call i64 @scic_sds_port_requires_scheduler_workaround(%struct.TYPE_13__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %91

35:                                               ; preds = %31
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SCU_DUMMY_INDEX, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %35
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = call i64 @scic_sds_remote_node_table_allocate_remote_node(i32* %45, i32 1)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SCU_DUMMY_INDEX, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @scic_sds_port_construct_dummy_rnc(%struct.TYPE_13__* %55, i64 %58)
  br label %62

60:                                               ; preds = %41
  %61 = load i64, i64* @SCI_FAILURE_INSUFFICIENT_RESOURCES, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %54
  br label %63

63:                                               ; preds = %62, %35
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SCU_DUMMY_INDEX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %63
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = call i64 @scic_controller_allocate_io_tag(%struct.TYPE_12__* %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SCU_DUMMY_INDEX, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %69
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @scic_sds_port_construct_dummy_task(%struct.TYPE_13__* %82, i64 %85)
  br label %89

87:                                               ; preds = %69
  %88 = load i64, i64* @SCI_FAILURE_INSUFFICIENT_RESOURCES, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %87, %81
  br label %90

90:                                               ; preds = %89, %63
  br label %91

91:                                               ; preds = %90, %31
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @SCI_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = call i32 @scic_sds_port_get_phys(%struct.TYPE_13__* %96)
  store i32 %97, i32* %4, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @scic_sds_port_is_phy_mask_valid(%struct.TYPE_13__* %98, i32 %99)
  %101 = load i64, i64* @TRUE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = call i32 @scic_sds_port_get_base_state_machine(%struct.TYPE_13__* %104)
  %106 = load i32, i32* @SCI_BASE_PORT_STATE_READY, align 4
  %107 = call i32 @sci_base_state_machine_change_state(i32 %105, i32 %106)
  br label %110

108:                                              ; preds = %95
  %109 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %108, %103
  br label %111

111:                                              ; preds = %110, %91
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @SCI_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = call i32 @scic_sds_port_destroy_dummy_resources(%struct.TYPE_13__* %116)
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i64, i64* %5, align 8
  store i64 %119, i64* %2, align 8
  br label %120

120:                                              ; preds = %118, %29, %14
  %121 = load i64, i64* %2, align 8
  ret i64 %121
}

declare dso_local i64 @scic_cb_timer_create(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @scic_sds_port_get_controller(%struct.TYPE_13__*) #1

declare dso_local i64 @scic_sds_port_requires_scheduler_workaround(%struct.TYPE_13__*) #1

declare dso_local i64 @scic_sds_remote_node_table_allocate_remote_node(i32*, i32) #1

declare dso_local i32 @scic_sds_port_construct_dummy_rnc(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @scic_controller_allocate_io_tag(%struct.TYPE_12__*) #1

declare dso_local i32 @scic_sds_port_construct_dummy_task(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @scic_sds_port_get_phys(%struct.TYPE_13__*) #1

declare dso_local i64 @scic_sds_port_is_phy_mask_valid(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_port_get_base_state_machine(%struct.TYPE_13__*) #1

declare dso_local i32 @scic_sds_port_destroy_dummy_resources(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
