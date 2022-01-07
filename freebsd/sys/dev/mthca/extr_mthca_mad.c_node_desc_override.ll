; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mad.c_node_desc_override.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mad.c_node_desc_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_smp = type { i32 }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET_RESP = common dso_local global i64 0, align 8
@IB_SMP_ATTR_NODE_DESC = common dso_local global i64 0, align 8
@IB_DEVICE_NODE_DESC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.ib_mad*)* @node_desc_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_desc_override(%struct.ib_device* %0, %struct.ib_mad* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_mad*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ib_mad* %1, %struct.ib_mad** %4, align 8
  %5 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %6 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %13 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %11, %2
  %19 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %20 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IB_MGMT_METHOD_GET_RESP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %18
  %26 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %27 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_SMP_ATTR_NODE_DESC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %34 = call %struct.TYPE_4__* @to_mdev(%struct.ib_device* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %38 = bitcast %struct.ib_mad* %37 to %struct.ib_smp*
  %39 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %42 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IB_DEVICE_NODE_DESC_MAX, align 4
  %45 = call i32 @memcpy(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %47 = call %struct.TYPE_4__* @to_mdev(%struct.ib_device* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %32, %25, %18, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
