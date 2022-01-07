; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_initialized_state_start_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_initialized_state_start_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 (i32*)* }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_BASE_CONTROLLER_STATE_STARTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @scic_sds_controller_initialized_state_start_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_controller_initialized_state_start_handler(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %7, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %11 = call i64 @scic_sds_controller_validate_memory_descriptor_table(%struct.TYPE_17__* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @SCI_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %17 = call i32 @scic_sds_controller_ram_initialization(%struct.TYPE_17__* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i64, i64* @SCI_SUCCESS, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sci_pool_initialize(i32 %25)
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %39, %22
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @sci_pool_put(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @scic_sds_remote_node_table_initialize(i32* %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %18
  %50 = load i64, i64* @SCI_SUCCESS, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @scic_controller_disable_interrupts(i32* %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = call i32 @scic_sds_controller_enable_port_task_scheduler(%struct.TYPE_17__* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = call i32 @scic_sds_controller_assign_task_entries(%struct.TYPE_17__* %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = call i32 @scic_sds_controller_initialize_completion_queue(%struct.TYPE_17__* %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = call i32 @scic_sds_controller_initialize_unsolicited_frame_queue(%struct.TYPE_17__* %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = call i64 @scic_sds_controller_initialize_phy_startup(%struct.TYPE_17__* %64)
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %53, %49
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %97, %66
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @SCI_SUCCESS, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %73, %67
  %78 = phi i1 [ false, %67 ], [ %76, %73 ]
  br i1 %78, label %79, label %100

79:                                               ; preds = %77
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64 (i32*)*, i64 (i32*)** %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = call i64 %89(i32* %95)
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %79
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %5, align 8
  br label %67

100:                                              ; preds = %77
  %101 = load i64, i64* @SCI_SUCCESS, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %106 = call i32 @scic_sds_controller_start_next_phy(%struct.TYPE_17__* %105)
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i32*, i32** %3, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @scic_cb_timer_start(i32* %110, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %104
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %118 = call i32 @scic_sds_controller_get_base_state_machine(%struct.TYPE_17__* %117)
  %119 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_STARTING, align 4
  %120 = call i32 @sci_base_state_machine_change_state(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %100
  %122 = load i64, i64* %6, align 8
  ret i64 %122
}

declare dso_local i64 @scic_sds_controller_validate_memory_descriptor_table(%struct.TYPE_17__*) #1

declare dso_local i32 @scic_sds_controller_ram_initialization(%struct.TYPE_17__*) #1

declare dso_local i32 @sci_pool_initialize(i32) #1

declare dso_local i32 @sci_pool_put(i32, i64) #1

declare dso_local i32 @scic_sds_remote_node_table_initialize(i32*, i32) #1

declare dso_local i32 @scic_controller_disable_interrupts(i32*) #1

declare dso_local i32 @scic_sds_controller_enable_port_task_scheduler(%struct.TYPE_17__*) #1

declare dso_local i32 @scic_sds_controller_assign_task_entries(%struct.TYPE_17__*) #1

declare dso_local i32 @scic_sds_controller_initialize_completion_queue(%struct.TYPE_17__*) #1

declare dso_local i32 @scic_sds_controller_initialize_unsolicited_frame_queue(%struct.TYPE_17__*) #1

declare dso_local i64 @scic_sds_controller_initialize_phy_startup(%struct.TYPE_17__*) #1

declare dso_local i32 @scic_sds_controller_start_next_phy(%struct.TYPE_17__*) #1

declare dso_local i32 @scic_cb_timer_start(i32*, i32, i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_controller_get_base_state_machine(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
