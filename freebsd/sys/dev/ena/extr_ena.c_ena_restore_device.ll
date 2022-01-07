; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_restore_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_restore_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32, i32, i32, i32, %struct.ena_com_dev* }
%struct.ena_com_dev = type { i32 }
%struct.ena_com_dev_get_features_ctx = type { i32 }

@ENA_FLAG_ONGOING_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot initialize device\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Validation of device parameters failed\0A\00", align 1
@ENA_FLAG_LINK_UP = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Enable MSI-X failed\0A\00", align 1
@ENA_FLAG_DEV_UP_BEFORE_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to create I/O queues\0A\00", align 1
@ENA_FLAG_DEVICE_RUNNING = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@ena_timer_service = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Device reset completed successfully, Driver info: %s\0A\00", align 1
@ena_version = common dso_local global i32 0, align 4
@ENA_REGS_RESET_DRIVER_INVALID_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Reset attempt failed. Can not reset the device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_restore_device(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_dev_get_features_ctx, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 6
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %11, align 8
  store %struct.ena_com_dev* %12, %struct.ena_com_dev** %5, align 8
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @ENA_FLAG_ONGOING_RESET, align 4
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %21 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %19, %struct.ena_adapter* %20)
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ena_device_init(%struct.ena_adapter* %22, i32 %23, %struct.ena_com_dev_get_features_ctx* %4, i32* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %132

30:                                               ; preds = %1
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %41 = call i32 @ena_device_validate_params(%struct.ena_adapter* %40, %struct.ena_com_dev_get_features_ctx* %4)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %120

47:                                               ; preds = %39
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %49 = call i32 @ena_handle_updated_queues(%struct.ena_adapter* %48, %struct.ena_com_dev_get_features_ctx* %4)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %120

53:                                               ; preds = %47
  %54 = load i32, i32* @ENA_FLAG_ONGOING_RESET, align 4
  %55 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %56 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %54, %struct.ena_adapter* %55)
  %57 = load i32, i32* @ENA_FLAG_LINK_UP, align 4
  %58 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %59 = call i64 @ENA_FLAG_ISSET(i32 %57, %struct.ena_adapter* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @LINK_STATE_UP, align 4
  %64 = call i32 @if_link_state_change(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %53
  %66 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %67 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ena_enable_msix_and_set_admin_interrupts(%struct.ena_adapter* %66, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %120

76:                                               ; preds = %65
  %77 = load i32, i32* @ENA_FLAG_DEV_UP_BEFORE_RESET, align 4
  %78 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %79 = call i64 @ENA_FLAG_ISSET(i32 %77, %struct.ena_adapter* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %83 = call i32 @ena_up(%struct.ena_adapter* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %115

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %92 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %93 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %91, %struct.ena_adapter* %92)
  %94 = load i32, i32* @ENA_FLAG_DEV_UP_BEFORE_RESET, align 4
  %95 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %96 = call i64 @ENA_FLAG_ISSET(i32 %94, %struct.ena_adapter* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %90
  %99 = call i32 (...) @getsbinuptime()
  %100 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %102, i32 0, i32 1
  %104 = load i32, i32* @SBT_1S, align 4
  %105 = load i32, i32* @SBT_1S, align 4
  %106 = load i32, i32* @ena_timer_service, align 4
  %107 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %108 = bitcast %struct.ena_adapter* %107 to i8*
  %109 = call i32 @callout_reset_sbt(i32* %103, i32 %104, i32 %105, i32 %106, i8* %108, i32 0)
  br label %110

110:                                              ; preds = %98, %90
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @ena_version, align 4
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %142

115:                                              ; preds = %86
  %116 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %117 = call i32 @ena_free_mgmnt_irq(%struct.ena_adapter* %116)
  %118 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %119 = call i32 @ena_disable_msix(%struct.ena_adapter* %118)
  br label %120

120:                                              ; preds = %115, %73, %52, %44
  %121 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %122 = call i32 @ena_com_abort_admin_commands(%struct.ena_com_dev* %121)
  %123 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %124 = call i32 @ena_com_wait_for_abort_completion(%struct.ena_com_dev* %123)
  %125 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %126 = call i32 @ena_com_admin_destroy(%struct.ena_com_dev* %125)
  %127 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %128 = load i32, i32* @ENA_REGS_RESET_DRIVER_INVALID_STATE, align 4
  %129 = call i32 @ena_com_dev_reset(%struct.ena_com_dev* %127, i32 %128)
  %130 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %131 = call i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev* %130)
  br label %132

132:                                              ; preds = %120, %27
  %133 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %134 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %135 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %133, %struct.ena_adapter* %134)
  %136 = load i32, i32* @ENA_FLAG_ONGOING_RESET, align 4
  %137 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %138 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %136, %struct.ena_adapter* %137)
  %139 = load i32, i32* %7, align 4
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %132, %110
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ena_device_init(%struct.ena_adapter*, i32, %struct.ena_com_dev_get_features_ctx*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ena_device_validate_params(%struct.ena_adapter*, %struct.ena_com_dev_get_features_ctx*) #1

declare dso_local i32 @ena_handle_updated_queues(%struct.ena_adapter*, %struct.ena_com_dev_get_features_ctx*) #1

declare dso_local i32 @ENA_FLAG_CLEAR_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i64 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i32 @ena_enable_msix_and_set_admin_interrupts(%struct.ena_adapter*, i32) #1

declare dso_local i32 @ena_up(%struct.ena_adapter*) #1

declare dso_local i32 @getsbinuptime(...) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ena_free_mgmnt_irq(%struct.ena_adapter*) #1

declare dso_local i32 @ena_disable_msix(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_abort_admin_commands(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_wait_for_abort_completion(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_admin_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_dev_reset(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
