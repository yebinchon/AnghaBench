; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_gid_type_mask_support.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_gid_type_mask_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 (%struct.ib_device*, i32)* }
%struct.ib_device = type { i32 }

@IB_GID_TYPE_IB = common dso_local global i64 0, align 8
@CAP_TO_GID_TABLE_SIZE = common dso_local global i32 0, align 4
@PORT_CAP_TO_GID_TYPE = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @roce_gid_type_mask_support(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @rdma_protocol_roce(%struct.ib_device* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @IB_GID_TYPE_IB, align 8
  %14 = shl i64 1, %13
  store i64 %14, i64* %3, align 8
  br label %50

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CAP_TO_GID_TABLE_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PORT_CAP_TO_GID_TYPE, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64 (%struct.ib_device*, i32)*, i64 (%struct.ib_device*, i32)** %25, align 8
  %27 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 %26(%struct.ib_device* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %20
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PORT_CAP_TO_GID_TYPE, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = shl i64 1, %37
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = or i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %31, %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %47, %12
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i32 @rdma_protocol_roce(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
