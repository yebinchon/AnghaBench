; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_get_config_itl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_get_config_itl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i32 }
%struct.hpt_iop_request_get_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@IOP_REQUEST_TYPE_GET_CONFIG = common dso_local global i32 0, align 4
@IOP_REQUEST_FLAG_SYNC_REQUEST = common dso_local global i32 0, align 4
@IOP_RESULT_PENDING = common dso_local global i32 0, align 4
@inbound_queue = common dso_local global i32 0, align 4
@IOPMU_QUEUE_EMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"hptiop: get config send cmd failed\00", align 1
@outbound_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_get_config*)* @hptiop_get_config_itl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_get_config_itl(%struct.hpt_iop_hba* %0, %struct.hpt_iop_request_get_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_get_config*, align 8
  %6 = alloca i64, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %4, align 8
  store %struct.hpt_iop_request_get_config* %1, %struct.hpt_iop_request_get_config** %5, align 8
  %7 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %8 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 32, i32* %9, align 8
  %10 = load i32, i32* @IOP_REQUEST_TYPE_GET_CONFIG, align 4
  %11 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %12 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* @IOP_REQUEST_FLAG_SYNC_REQUEST, align 4
  %15 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %16 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @IOP_RESULT_PENDING, align 4
  %19 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %20 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %23 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @inbound_queue, align 4
  %26 = call i64 @BUS_SPACE_RD4_ITL(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @IOPMU_QUEUE_EMPTY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

31:                                               ; preds = %2
  %32 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %33 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %36 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %40 = bitcast %struct.hpt_iop_request_get_config* %39 to i64*
  %41 = call i32 @bus_space_write_region_4(i32 %34, i32 %37, i64 %38, i64* %40, i32 1)
  %42 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @hptiop_send_sync_request_itl(%struct.hpt_iop_hba* %42, i64 %43, i32 20000)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = call i32 @KdPrint(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

48:                                               ; preds = %31
  %49 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %50 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %53 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %57 = bitcast %struct.hpt_iop_request_get_config* %56 to i64*
  %58 = call i32 @bus_space_read_region_4(i32 %51, i32 %54, i64 %55, i64* %57, i32 8)
  %59 = load i32, i32* @outbound_queue, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @BUS_SPACE_WRT4_ITL(i32 %59, i64 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %48, %46, %30
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @BUS_SPACE_RD4_ITL(i32) #1

declare dso_local i32 @bus_space_write_region_4(i32, i32, i64, i64*, i32) #1

declare dso_local i64 @hptiop_send_sync_request_itl(%struct.hpt_iop_hba*, i64, i32) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @bus_space_read_region_4(i32, i32, i64, i64*, i32) #1

declare dso_local i32 @BUS_SPACE_WRT4_ITL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
