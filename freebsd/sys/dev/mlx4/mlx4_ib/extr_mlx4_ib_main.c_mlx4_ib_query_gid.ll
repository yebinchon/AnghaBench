; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_query_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@zgid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %union.ib_gid*)* @mlx4_ib_query_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_query_gid(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.ib_gid* %3, %union.ib_gid** %9, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @rdma_protocol_ib(%struct.ib_device* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %20 = call i32 @__mlx4_ib_query_gid(%struct.ib_device* %16, i32 %17, i32 %18, %union.ib_gid* %19, i32 0)
  store i32 %20, i32* %5, align 4
  br label %52

21:                                               ; preds = %4
  %22 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @rdma_protocol_roce(%struct.ib_device* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %21
  %30 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @rdma_cap_roce_gid_table(%struct.ib_device* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %52

37:                                               ; preds = %29
  %38 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %42 = call i32 @ib_get_cached_gid(%struct.ib_device* %38, i32 %39, i32 %40, %union.ib_gid* %41, i32* null)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %49 = call i32 @memcpy(%union.ib_gid* %48, i32* @zgid, i32 4)
  store i32 0, i32* %5, align 4
  br label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %47, %34, %26, %15
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @rdma_protocol_ib(%struct.ib_device*, i32) #1

declare dso_local i32 @__mlx4_ib_query_gid(%struct.ib_device*, i32, i32, %union.ib_gid*, i32) #1

declare dso_local i32 @rdma_protocol_roce(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_cap_roce_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_get_cached_gid(%struct.ib_device*, i32, i32, %union.ib_gid*, i32*) #1

declare dso_local i32 @memcpy(%union.ib_gid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
