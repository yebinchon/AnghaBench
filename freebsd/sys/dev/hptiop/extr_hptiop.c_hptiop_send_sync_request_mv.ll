; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_send_sync_request_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_send_sync_request_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i64 }
%struct.hpt_iop_request_get_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MVIOP_MU_QUEUE_ADDR_HOST_BIT = common dso_local global i64 0, align 8
@IOP_REQUEST_FLAG_SYNC_REQUEST = common dso_local global i32 0, align 4
@IOP_REQUEST_FLAG_OUTPUT_CONTEXT = common dso_local global i32 0, align 4
@outbound_intmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*, i8*, i64)* @hptiop_send_sync_request_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_send_sync_request_mv(%struct.hpt_iop_hba* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpt_iop_hba*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %11 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %13 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* @MVIOP_MU_QUEUE_ADDR_HOST_BIT, align 8
  %16 = trunc i64 %15 to i32
  %17 = or i32 %14, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @IOP_REQUEST_FLAG_SYNC_REQUEST, align 4
  %19 = load i32, i32* @IOP_REQUEST_FLAG_OUTPUT_CONTEXT, align 4
  %20 = or i32 %18, %19
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.hpt_iop_request_get_config*
  %23 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %29 = call i32 @hptiop_mv_inbound_write(i32 %27, %struct.hpt_iop_hba* %28)
  %30 = load i32, i32* @outbound_intmask, align 4
  %31 = call i32 @BUS_SPACE_RD4_MV0(i32 %30)
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %46, %3
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %38 = call i32 @hptiop_intr_mv(%struct.hpt_iop_hba* %37)
  %39 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %40 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %50

44:                                               ; preds = %36
  %45 = call i32 @DELAY(i32 1000)
  br label %46

46:                                               ; preds = %44
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %32

49:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @hptiop_mv_inbound_write(i32, %struct.hpt_iop_hba*) #1

declare dso_local i32 @BUS_SPACE_RD4_MV0(i32) #1

declare dso_local i32 @hptiop_intr_mv(%struct.hpt_iop_hba*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
