; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_fill_in_real_sgid_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_fill_in_real_sgid_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.ib_ah_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32, i32, %struct.ib_ah_attr*)* @fill_in_real_sgid_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_in_real_sgid_index(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, %struct.ib_ah_attr* %3) #0 {
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_ah_attr*, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ib_ah_attr* %3, %struct.ib_ah_attr** %8, align 8
  %9 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @rdma_port_get_link_layer(i32* %10, i32 %11)
  %13 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %18 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %32

20:                                               ; preds = %4
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @get_slave_base_gid_ix(%struct.mlx4_ib_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %26 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %24
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  br label %32

32:                                               ; preds = %20, %15
  ret void
}

declare dso_local i64 @rdma_port_get_link_layer(i32*, i32) #1

declare dso_local i64 @get_slave_base_gid_ix(%struct.mlx4_ib_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
