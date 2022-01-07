; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_dev_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_fmr_pool_param = type { i32, i32, i32, i32, i32, i32 }
%struct.sdp_device = type { i32, i32 }

@M_SDP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SDP_FMR_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@SDP_FMR_POOL_SIZE = common dso_local global i32 0, align 4
@SDP_FMR_DIRTY_SIZE = common dso_local global i32 0, align 4
@sdp_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @sdp_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_dev_add(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_fmr_pool_param, align 4
  %4 = alloca %struct.sdp_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %5 = load i32, i32* @M_SDP, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.sdp_device* @malloc(i32 8, i32 %5, i32 %8)
  store %struct.sdp_device* %9, %struct.sdp_device** %4, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %11 = call i32 @ib_alloc_pd(%struct.ib_device* %10, i32 0)
  %12 = load %struct.sdp_device*, %struct.sdp_device** %4, align 8
  %13 = getelementptr inbounds %struct.sdp_device, %struct.sdp_device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.sdp_device*, %struct.sdp_device** %4, align 8
  %15 = getelementptr inbounds %struct.sdp_device, %struct.sdp_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_ERR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %56

20:                                               ; preds = %1
  %21 = call i32 @memset(%struct.ib_fmr_pool_param* %3, i32 0, i32 24)
  %22 = load i32, i32* @SDP_FMR_SIZE, align 4
  %23 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %3, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %3, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %27 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @SDP_FMR_POOL_SIZE, align 4
  %31 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %3, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @SDP_FMR_DIRTY_SIZE, align 4
  %33 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %3, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %3, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.sdp_device*, %struct.sdp_device** %4, align 8
  %36 = getelementptr inbounds %struct.sdp_device, %struct.sdp_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ib_create_fmr_pool(i32 %37, %struct.ib_fmr_pool_param* %3)
  %39 = load %struct.sdp_device*, %struct.sdp_device** %4, align 8
  %40 = getelementptr inbounds %struct.sdp_device, %struct.sdp_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sdp_device*, %struct.sdp_device** %4, align 8
  %42 = getelementptr inbounds %struct.sdp_device, %struct.sdp_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %20
  br label %51

47:                                               ; preds = %20
  %48 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %49 = load %struct.sdp_device*, %struct.sdp_device** %4, align 8
  %50 = call i32 @ib_set_client_data(%struct.ib_device* %48, i32* @sdp_client, %struct.sdp_device* %49)
  br label %60

51:                                               ; preds = %46
  %52 = load %struct.sdp_device*, %struct.sdp_device** %4, align 8
  %53 = getelementptr inbounds %struct.sdp_device, %struct.sdp_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ib_dealloc_pd(i32 %54)
  br label %56

56:                                               ; preds = %51, %19
  %57 = load %struct.sdp_device*, %struct.sdp_device** %4, align 8
  %58 = load i32, i32* @M_SDP, align 4
  %59 = call i32 @free(%struct.sdp_device* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %47
  ret void
}

declare dso_local %struct.sdp_device* @malloc(i32, i32, i32) #1

declare dso_local i32 @ib_alloc_pd(%struct.ib_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @memset(%struct.ib_fmr_pool_param*, i32, i32) #1

declare dso_local i32 @ib_create_fmr_pool(i32, %struct.ib_fmr_pool_param*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.sdp_device*) #1

declare dso_local i32 @ib_dealloc_pd(i32) #1

declare dso_local i32 @free(%struct.sdp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
