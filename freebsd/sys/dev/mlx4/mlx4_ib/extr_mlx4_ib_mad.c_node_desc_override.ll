; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_node_desc_override.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_node_desc_override.c"
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
  %5 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ib_mad* %1, %struct.ib_mad** %4, align 8
  %6 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %7 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %14 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %12, %2
  %20 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %21 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_MGMT_METHOD_GET_RESP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %19
  %27 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %28 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_SMP_ATTR_NODE_DESC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %35 = call %struct.TYPE_4__* @to_mdev(%struct.ib_device* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.ib_mad*, %struct.ib_mad** %4, align 8
  %40 = bitcast %struct.ib_mad* %39 to %struct.ib_smp*
  %41 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %44 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IB_DEVICE_NODE_DESC_MAX, align 4
  %47 = call i32 @memcpy(i32 %42, i32 %45, i32 %46)
  %48 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %49 = call %struct.TYPE_4__* @to_mdev(%struct.ib_device* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %33, %26, %19, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
