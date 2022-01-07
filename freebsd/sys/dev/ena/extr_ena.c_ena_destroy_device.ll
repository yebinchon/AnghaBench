; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_destroy_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_destroy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_com_dev*, i32, i32 }
%struct.ena_com_dev = type { i32 }

@ENA_FLAG_DEVICE_RUNNING = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@ENA_FLAG_DEV_UP_BEFORE_RESET = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@ENA_REGS_RESET_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_destroy_device(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_com_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 1
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %12, align 8
  store %struct.ena_com_dev* %13, %struct.ena_com_dev** %6, align 8
  %14 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %16 = call i32 @ENA_FLAG_ISSET(i32 %14, %struct.ena_adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %91

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LINK_STATE_DOWN, align 4
  %22 = call i32 @if_link_state_change(i32 %20, i32 %21)
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %23, i32 0, i32 2
  %25 = call i32 @callout_drain(i32* %24)
  %26 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %28 = call i32 @ENA_FLAG_ISSET(i32 %26, %struct.ena_adapter* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @ENA_FLAG_DEV_UP_BEFORE_RESET, align 4
  %33 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %34 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %32, %struct.ena_adapter* %33)
  br label %39

35:                                               ; preds = %19
  %36 = load i32, i32* @ENA_FLAG_DEV_UP_BEFORE_RESET, align 4
  %37 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %38 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %36, %struct.ena_adapter* %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %44 = call i32 @ena_com_set_admin_running_state(%struct.ena_com_dev* %43, i32 0)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %47 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %48 = call i32 @ENA_FLAG_ISSET(i32 %46, %struct.ena_adapter* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %52 = call i32 @ena_down(%struct.ena_adapter* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %55 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %56 = call i32 @ENA_FLAG_ISSET(i32 %54, %struct.ena_adapter* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %62, i32 0, i32 1
  %64 = load %struct.ena_com_dev*, %struct.ena_com_dev** %63, align 8
  %65 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ena_com_dev_reset(%struct.ena_com_dev* %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %58
  %70 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %71 = call i32 @ena_free_mgmnt_irq(%struct.ena_adapter* %70)
  %72 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %73 = call i32 @ena_disable_msix(%struct.ena_adapter* %72)
  %74 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %75 = call i32 @ena_com_abort_admin_commands(%struct.ena_com_dev* %74)
  %76 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %77 = call i32 @ena_com_wait_for_abort_completion(%struct.ena_com_dev* %76)
  %78 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %79 = call i32 @ena_com_admin_destroy(%struct.ena_com_dev* %78)
  %80 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %81 = call i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev* %80)
  %82 = load i32, i32* @ENA_REGS_RESET_NORMAL, align 4
  %83 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %86 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %87 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %85, %struct.ena_adapter* %86)
  %88 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %89 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %90 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %88, %struct.ena_adapter* %89)
  br label %91

91:                                               ; preds = %69, %18
  ret void
}

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ENA_FLAG_CLEAR_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ena_com_set_admin_running_state(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_down(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_dev_reset(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_free_mgmnt_irq(%struct.ena_adapter*) #1

declare dso_local i32 @ena_disable_msix(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_abort_admin_commands(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_wait_for_abort_completion(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_admin_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
