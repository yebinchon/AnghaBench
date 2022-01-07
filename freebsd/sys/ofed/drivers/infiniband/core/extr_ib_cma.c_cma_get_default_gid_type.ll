; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_get_default_gid_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_get_default_gid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_device = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cma_get_default_gid_type(%struct.cma_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma_device*, align 8
  %5 = alloca i32, align 4
  store %struct.cma_device* %0, %struct.cma_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %8 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @rdma_start_port(i32 %9)
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %15 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @rdma_end_port(i32 %16)
  %18 = icmp ugt i32 %13, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %12
  %23 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %24 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %28 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rdma_start_port(i32 %29)
  %31 = sub i32 %26, %30
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %25, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @rdma_start_port(i32) #1

declare dso_local i32 @rdma_end_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
