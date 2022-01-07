; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_get_config_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_get_config_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { %struct.hpt_iop_request_get_config* }
%struct.hpt_iop_request_get_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@IOP_REQUEST_TYPE_GET_CONFIG = common dso_local global i32 0, align 4
@IOP_RESULT_PENDING = common dso_local global i32 0, align 4
@MVIOP_CMD_TYPE_GET_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"hptiop: get config send cmd failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_get_config*)* @hptiop_get_config_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_get_config_mv(%struct.hpt_iop_hba* %0, %struct.hpt_iop_request_get_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_get_config*, align 8
  %6 = alloca %struct.hpt_iop_request_get_config*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %4, align 8
  store %struct.hpt_iop_request_get_config* %1, %struct.hpt_iop_request_get_config** %5, align 8
  %7 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %8 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %7, i32 0, i32 0
  %9 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %8, align 8
  store %struct.hpt_iop_request_get_config* %9, %struct.hpt_iop_request_get_config** %6, align 8
  %10 = icmp ne %struct.hpt_iop_request_get_config* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %14 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @IOP_REQUEST_TYPE_GET_CONFIG, align 4
  %17 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %18 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %21 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 24, i32* %22, align 8
  %23 = load i32, i32* @IOP_RESULT_PENDING, align 4
  %24 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %25 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @MVIOP_CMD_TYPE_GET_CONFIG, align 4
  %28 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %29 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %32 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %33 = call i64 @hptiop_send_sync_request_mv(%struct.hpt_iop_hba* %31, %struct.hpt_iop_request_get_config* %32, i32 20000)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = call i32 @KdPrint(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %42

37:                                               ; preds = %12
  %38 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %39 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %40 = bitcast %struct.hpt_iop_request_get_config* %38 to i8*
  %41 = bitcast %struct.hpt_iop_request_get_config* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %35, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @hptiop_send_sync_request_mv(%struct.hpt_iop_hba*, %struct.hpt_iop_request_get_config*, i32) #1

declare dso_local i32 @KdPrint(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
