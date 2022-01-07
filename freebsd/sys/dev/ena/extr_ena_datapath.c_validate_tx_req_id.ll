; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_validate_tx_req_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_validate_tx_req_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, %struct.TYPE_2__, %struct.ena_tx_buffer*, %struct.ena_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.ena_tx_buffer = type { i32* }
%struct.ena_adapter = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"tx_info doesn't have valid mbuf\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid req_id: %hu\0A\00", align 1
@ENA_REGS_RESET_INV_TX_REQ_ID = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_ring*, i64)* @validate_tx_req_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_tx_req_id(%struct.ena_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca %struct.ena_tx_buffer*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %9 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %8, i32 0, i32 3
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %9, align 8
  store %struct.ena_adapter* %10, %struct.ena_adapter** %6, align 8
  store %struct.ena_tx_buffer* null, %struct.ena_tx_buffer** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %21 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %20, i32 0, i32 2
  %22 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %22, i64 %23
  store %struct.ena_tx_buffer* %24, %struct.ena_tx_buffer** %7, align 8
  %25 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %26 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %53

30:                                               ; preds = %19
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %42 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @counter_u64_add(i32 %44, i32 1)
  %46 = load i32, i32* @ENA_REGS_RESET_INV_TX_REQ_ID, align 4
  %47 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %50 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %51 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %49, %struct.ena_adapter* %50)
  %52 = load i32, i32* @EFAULT, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %35, %29
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
