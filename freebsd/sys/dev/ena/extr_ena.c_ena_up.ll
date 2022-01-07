; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"device is not attached!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"device is going UP\0A\00", align 1
@ENA_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"error setting up IO interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"err_req_irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"err_setup_tx\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"err_setup_rx\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"create IO queues failed\0A\00", align 1
@ENA_FLAG_LINK_UP = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ENA_FLAG_DEVICE_RUNNING = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@ena_timer_service = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_up(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @device_is_attached(i32 %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %151

19:                                               ; preds = %1
  %20 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %21 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %22 = call i64 @ENA_FLAG_ISSET(i32 %20, %struct.ena_adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %136, label %24

24:                                               ; preds = %19
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %30 = call i32 @ena_setup_io_intr(%struct.ena_adapter* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @ENA_ALERT, align 4
  %38 = call i32 @ena_trace(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %149

39:                                               ; preds = %24
  %40 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %41 = call i32 @ena_request_io_irq(%struct.ena_adapter* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ENA_ALERT, align 4
  %49 = call i32 @ena_trace(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %149

50:                                               ; preds = %39
  %51 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %52 = call i32 @ena_setup_all_tx_resources(%struct.ena_adapter* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @ENA_ALERT, align 4
  %60 = call i32 @ena_trace(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %146

61:                                               ; preds = %50
  %62 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %63 = call i32 @ena_setup_all_rx_resources(%struct.ena_adapter* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @ENA_ALERT, align 4
  %71 = call i32 @ena_trace(i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %143

72:                                               ; preds = %61
  %73 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %74 = call i32 @ena_create_io_queues(%struct.ena_adapter* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @ENA_ALERT, align 4
  %82 = call i32 @ena_trace(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %140

83:                                               ; preds = %72
  %84 = load i32, i32* @ENA_FLAG_LINK_UP, align 4
  %85 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %86 = call i64 @ENA_FLAG_ISSET(i32 %84, %struct.ena_adapter* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @LINK_STATE_UP, align 4
  %93 = call i32 @if_link_state_change(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %96 = call i32 @ena_up_complete(%struct.ena_adapter* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %137

103:                                              ; preds = %94
  %104 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @counter_u64_add(i32 %107, i32 1)
  %109 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %110 = call i32 @ena_update_hwassist(%struct.ena_adapter* %109)
  %111 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %115 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %116 = call i32 @if_setdrvflagbits(i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %118 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %119 = call i64 @ENA_FLAG_ISSET(i32 %117, %struct.ena_adapter* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %103
  %122 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %123 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %122, i32 0, i32 0
  %124 = load i32, i32* @SBT_1S, align 4
  %125 = load i32, i32* @SBT_1S, align 4
  %126 = load i32, i32* @ena_timer_service, align 4
  %127 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %128 = bitcast %struct.ena_adapter* %127 to i8*
  %129 = call i32 @callout_reset_sbt(i32* %123, i32 %124, i32 %125, i32 %126, i8* %128, i32 0)
  br label %130

130:                                              ; preds = %121, %103
  %131 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %132 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %133 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %131, %struct.ena_adapter* %132)
  %134 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %135 = call i32 @ena_unmask_all_io_irqs(%struct.ena_adapter* %134)
  br label %136

136:                                              ; preds = %130, %19
  store i32 0, i32* %2, align 4
  br label %151

137:                                              ; preds = %102
  %138 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %139 = call i32 @ena_destroy_all_io_queues(%struct.ena_adapter* %138)
  br label %140

140:                                              ; preds = %137, %80
  %141 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %142 = call i32 @ena_free_all_rx_resources(%struct.ena_adapter* %141)
  br label %143

143:                                              ; preds = %140, %69
  %144 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %145 = call i32 @ena_free_all_tx_resources(%struct.ena_adapter* %144)
  br label %146

146:                                              ; preds = %143, %58
  %147 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %148 = call i32 @ena_free_io_irq(%struct.ena_adapter* %147)
  br label %149

149:                                              ; preds = %146, %47, %36
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %136, %13
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ena_setup_io_intr(%struct.ena_adapter*) #1

declare dso_local i32 @ena_trace(i32, i8*) #1

declare dso_local i32 @ena_request_io_irq(%struct.ena_adapter*) #1

declare dso_local i32 @ena_setup_all_tx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @ena_setup_all_rx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @ena_create_io_queues(%struct.ena_adapter*) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i32 @ena_up_complete(%struct.ena_adapter*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ena_update_hwassist(%struct.ena_adapter*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ena_unmask_all_io_irqs(%struct.ena_adapter*) #1

declare dso_local i32 @ena_destroy_all_io_queues(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_all_rx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_all_tx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_io_irq(%struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
