; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"device is going DOWN\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Device reset failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_down(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %4 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %5 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %6 = call i64 @ENA_FLAG_ISSET(i32 %4, %struct.ena_adapter* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %66

8:                                                ; preds = %1
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @device_printf(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %13, i32 0, i32 5
  %15 = call i32 @callout_drain(i32* %14)
  %16 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %18 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %16, %struct.ena_adapter* %17)
  %19 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = call i32 @if_setdrvflagbits(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %26 = call i32 @ena_free_io_irq(%struct.ena_adapter* %25)
  %27 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %28 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %29 = call i64 @ENA_FLAG_ISSET(i32 %27, %struct.ena_adapter* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %8
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ena_com_dev_reset(i32 %34, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %31
  br label %50

50:                                               ; preds = %49, %8
  %51 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %52 = call i32 @ena_destroy_all_io_queues(%struct.ena_adapter* %51)
  %53 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %54 = call i32 @ena_free_all_tx_bufs(%struct.ena_adapter* %53)
  %55 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %56 = call i32 @ena_free_all_rx_bufs(%struct.ena_adapter* %55)
  %57 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %58 = call i32 @ena_free_all_tx_resources(%struct.ena_adapter* %57)
  %59 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %60 = call i32 @ena_free_all_rx_resources(%struct.ena_adapter* %59)
  %61 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @counter_u64_add(i32 %64, i32 1)
  br label %66

66:                                               ; preds = %50, %1
  ret void
}

declare dso_local i64 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ENA_FLAG_CLEAR_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @ena_free_io_irq(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_dev_reset(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_destroy_all_io_queues(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_all_tx_bufs(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_all_rx_bufs(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_all_tx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_all_rx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
