; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_for_rx_interrupt_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_for_rx_interrupt_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32 }
%struct.ena_ring = type { i32, i64, i32, i32 }

@ENA_MAX_NO_INTERRUPT_ITERATIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Potential MSIX issue on Rx side Queue = %d. Reset the device\0A\00", align 1
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@ENA_REGS_RESET_MISS_INTERRUPT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, %struct.ena_ring*)* @check_for_rx_interrupt_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_rx_interrupt_queue(%struct.ena_adapter* %0, %struct.ena_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_ring*, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store %struct.ena_ring* %1, %struct.ena_ring** %5, align 8
  %6 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %7 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  %13 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %14 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ena_com_cq_empty(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %55

19:                                               ; preds = %12
  %20 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %21 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ENA_MAX_NO_INTERRUPT_ITERATIONS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %19
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %34 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %38 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %39 = call i32 @ENA_FLAG_ISSET(i32 %37, %struct.ena_adapter* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load i32, i32* @ENA_REGS_RESET_MISS_INTERRUPT, align 4
  %47 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %50 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %51 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %49, %struct.ena_adapter* %50)
  br label %52

52:                                               ; preds = %45, %29
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %18, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @ena_com_cq_empty(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
