; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_set_default_gid_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_set_default_gid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_device = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cma_set_default_gid_type(%struct.cma_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.cma_device* %0, %struct.cma_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %11 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @rdma_start_port(i32 %12)
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %18 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @rdma_end_port(i32 %19)
  %21 = icmp ugt i32 %16, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %15
  %26 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %27 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @roce_gid_type_mask_support(i32 %28, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = and i64 %31, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %43 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %47 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @rdma_start_port(i32 %48)
  %50 = sub i32 %45, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %44, i64 %51
  store i32 %41, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %40, %37, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @rdma_start_port(i32) #1

declare dso_local i32 @rdma_end_port(i32) #1

declare dso_local i64 @roce_gid_type_mask_support(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
