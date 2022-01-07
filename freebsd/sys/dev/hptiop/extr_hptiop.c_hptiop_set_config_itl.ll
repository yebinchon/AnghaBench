; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_set_config_itl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_set_config_itl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i32 }
%struct.hpt_iop_request_set_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@inbound_queue = common dso_local global i32 0, align 4
@IOPMU_QUEUE_EMPTY = common dso_local global i64 0, align 8
@IOP_REQUEST_TYPE_SET_CONFIG = common dso_local global i32 0, align 4
@IOP_REQUEST_FLAG_SYNC_REQUEST = common dso_local global i32 0, align 4
@IOP_RESULT_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"hptiop: set config send cmd failed\00", align 1
@outbound_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_set_config*)* @hptiop_set_config_itl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_set_config_itl(%struct.hpt_iop_hba* %0, %struct.hpt_iop_request_set_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_set_config*, align 8
  %6 = alloca i64, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %4, align 8
  store %struct.hpt_iop_request_set_config* %1, %struct.hpt_iop_request_set_config** %5, align 8
  %7 = load i32, i32* @inbound_queue, align 4
  %8 = call i64 @BUS_SPACE_RD4_ITL(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @IOPMU_QUEUE_EMPTY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %5, align 8
  %15 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 32, i32* %16, align 8
  %17 = load i32, i32* @IOP_REQUEST_TYPE_SET_CONFIG, align 4
  %18 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %5, align 8
  %19 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @IOP_REQUEST_FLAG_SYNC_REQUEST, align 4
  %22 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %5, align 8
  %23 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @IOP_RESULT_PENDING, align 4
  %26 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %5, align 8
  %27 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %5, align 8
  %30 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %33 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %36 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %5, align 8
  %40 = bitcast %struct.hpt_iop_request_set_config* %39 to i64*
  %41 = call i32 @bus_space_write_region_4(i32 %34, i32 %37, i64 %38, i64* %40, i32 8)
  %42 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @hptiop_send_sync_request_itl(%struct.hpt_iop_hba* %42, i64 %43, i32 20000)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %13
  %47 = call i32 @KdPrint(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %52

48:                                               ; preds = %13
  %49 = load i32, i32* @outbound_queue, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @BUS_SPACE_WRT4_ITL(i32 %49, i64 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %46, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @BUS_SPACE_RD4_ITL(i32) #1

declare dso_local i32 @bus_space_write_region_4(i32, i32, i64, i64*, i32) #1

declare dso_local i64 @hptiop_send_sync_request_itl(%struct.hpt_iop_hba*, i64, i32) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @BUS_SPACE_WRT4_ITL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
