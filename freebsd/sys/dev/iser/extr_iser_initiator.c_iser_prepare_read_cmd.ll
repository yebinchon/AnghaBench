; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_prepare_read_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_prepare_read_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_iser_pdu = type { %struct.iser_mem_reg*, %struct.iser_data_buf*, %struct.TYPE_4__ }
%struct.iser_mem_reg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iser_data_buf = type { i32 }
%struct.TYPE_4__ = type { %struct.iser_hdr }
%struct.iser_hdr = type { i32, i32, i32 }

@ISER_DIR_IN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to set up Data-IN RDMA\00", align 1
@ISER_RSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_iser_pdu*)* @iser_prepare_read_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_prepare_read_cmd(%struct.icl_iser_pdu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icl_iser_pdu*, align 8
  %4 = alloca %struct.iser_hdr*, align 8
  %5 = alloca %struct.iser_data_buf*, align 8
  %6 = alloca %struct.iser_mem_reg*, align 8
  %7 = alloca i32, align 4
  store %struct.icl_iser_pdu* %0, %struct.icl_iser_pdu** %3, align 8
  %8 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %3, align 8
  %9 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.iser_hdr* %10, %struct.iser_hdr** %4, align 8
  %11 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %3, align 8
  %12 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %11, i32 0, i32 1
  %13 = load %struct.iser_data_buf*, %struct.iser_data_buf** %12, align 8
  %14 = load i64, i64* @ISER_DIR_IN, align 8
  %15 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %13, i64 %14
  store %struct.iser_data_buf* %15, %struct.iser_data_buf** %5, align 8
  %16 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %3, align 8
  %17 = load %struct.iser_data_buf*, %struct.iser_data_buf** %5, align 8
  %18 = load i64, i64* @ISER_DIR_IN, align 8
  %19 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %20 = call i32 @iser_dma_map_task_data(%struct.icl_iser_pdu* %16, %struct.iser_data_buf* %17, i64 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %58

25:                                               ; preds = %1
  %26 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %3, align 8
  %27 = load i64, i64* @ISER_DIR_IN, align 8
  %28 = call i32 @iser_reg_rdma_mem(%struct.icl_iser_pdu* %26, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = call i32 @ISER_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %25
  %35 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %3, align 8
  %36 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %35, i32 0, i32 0
  %37 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %36, align 8
  %38 = load i64, i64* @ISER_DIR_IN, align 8
  %39 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %37, i64 %38
  store %struct.iser_mem_reg* %39, %struct.iser_mem_reg** %6, align 8
  %40 = load i32, i32* @ISER_RSV, align 4
  %41 = load %struct.iser_hdr*, %struct.iser_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.iser_hdr, %struct.iser_hdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %46 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpu_to_be32(i32 %47)
  %49 = load %struct.iser_hdr*, %struct.iser_hdr** %4, align 8
  %50 = getelementptr inbounds %struct.iser_hdr, %struct.iser_hdr* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %52 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_be64(i32 %54)
  %56 = load %struct.iser_hdr*, %struct.iser_hdr** %4, align 8
  %57 = getelementptr inbounds %struct.iser_hdr, %struct.iser_hdr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %34, %31, %23
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @iser_dma_map_task_data(%struct.icl_iser_pdu*, %struct.iser_data_buf*, i64, i32) #1

declare dso_local i32 @iser_reg_rdma_mem(%struct.icl_iser_pdu*, i64) #1

declare dso_local i32 @ISER_ERR(i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
