; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_set_config_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_set_config_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { %struct.hpt_iop_request_set_config* }
%struct.hpt_iop_request_set_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@IOP_REQUEST_TYPE_SET_CONFIG = common dso_local global i32 0, align 4
@IOP_RESULT_PENDING = common dso_local global i32 0, align 4
@MVIOP_CMD_TYPE_SET_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"hptiop: set config send cmd failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_set_config*)* @hptiop_set_config_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_set_config_mv(%struct.hpt_iop_hba* %0, %struct.hpt_iop_request_set_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_set_config*, align 8
  %6 = alloca %struct.hpt_iop_request_set_config*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %4, align 8
  store %struct.hpt_iop_request_set_config* %1, %struct.hpt_iop_request_set_config** %5, align 8
  %7 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %8 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %7, i32 0, i32 0
  %9 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %8, align 8
  store %struct.hpt_iop_request_set_config* %9, %struct.hpt_iop_request_set_config** %6, align 8
  %10 = icmp ne %struct.hpt_iop_request_set_config* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %14 = bitcast %struct.hpt_iop_request_set_config* %13 to i32*
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %5, align 8
  %17 = bitcast %struct.hpt_iop_request_set_config* %16 to i32*
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = call i32 @memcpy(i32* %15, i32* %18, i32 20)
  %20 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %21 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @IOP_REQUEST_TYPE_SET_CONFIG, align 4
  %24 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %25 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %28 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 24, i32* %29, align 8
  %30 = load i32, i32* @IOP_RESULT_PENDING, align 4
  %31 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %32 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @MVIOP_CMD_TYPE_SET_CONFIG, align 4
  %35 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %36 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %39 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %40 = call i64 @hptiop_send_sync_request_mv(%struct.hpt_iop_hba* %38, %struct.hpt_iop_request_set_config* %39, i32 20000)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %12
  %43 = call i32 @KdPrint(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

44:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @hptiop_send_sync_request_mv(%struct.hpt_iop_hba*, %struct.hpt_iop_request_set_config*, i32) #1

declare dso_local i32 @KdPrint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
