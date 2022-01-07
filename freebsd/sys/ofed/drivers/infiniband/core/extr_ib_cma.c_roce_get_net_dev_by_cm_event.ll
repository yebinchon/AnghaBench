; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_roce_get_net_dev_by_cm_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_roce_get_net_dev_by_cm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_cm_event = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_gid_attr = type { %struct.net_device* }
%union.ib_gid = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_REQ_RECEIVED = common dso_local global i64 0, align 8
@IB_CM_SIDR_REQ_RECEIVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ib_device*, i32, %struct.ib_cm_event*)* @roce_get_net_dev_by_cm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @roce_get_net_dev_by_cm_event(%struct.ib_device* %0, i32 %1, %struct.ib_cm_event* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_cm_event*, align 8
  %8 = alloca %struct.ib_gid_attr, align 8
  %9 = alloca %union.ib_gid, align 4
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_cm_event* %2, %struct.ib_cm_event** %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ib_cm_event*, %struct.ib_cm_event** %7, align 8
  %14 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_CM_REQ_RECEIVED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ib_cm_event*, %struct.ib_cm_event** %7, align 8
  %22 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ib_get_cached_gid(%struct.ib_device* %19, i32 %20, i32 %25, %union.ib_gid* %9, %struct.ib_gid_attr* %8)
  store i32 %26, i32* %10, align 4
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.ib_cm_event*, %struct.ib_cm_event** %7, align 8
  %29 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_CM_SIDR_REQ_RECEIVED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ib_cm_event*, %struct.ib_cm_event** %7, align 8
  %37 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ib_get_cached_gid(%struct.ib_device* %34, i32 %35, i32 %40, %union.ib_gid* %9, %struct.ib_gid_attr* %8)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %33, %27
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %8, i32 0, i32 0
  %49 = load %struct.net_device*, %struct.net_device** %48, align 8
  store %struct.net_device* %49, %struct.net_device** %4, align 8
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %51
}

declare dso_local i32 @ib_get_cached_gid(%struct.ib_device*, i32, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
