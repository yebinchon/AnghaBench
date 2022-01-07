; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_ah.c_mlx4_ib_create_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_ah.c_mlx4_ib_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_ah = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ah* @mlx4_ib_create_ah(%struct.ib_pd* %0, %struct.ib_ah_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_ah_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx4_ib_ah*, align 8
  %9 = alloca %struct.ib_ah*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.mlx4_ib_ah* @kzalloc(i32 4, i32 %10)
  store %struct.mlx4_ib_ah* %11, %struct.mlx4_ib_ah** %8, align 8
  %12 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %8, align 8
  %13 = icmp ne %struct.mlx4_ib_ah* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_ah* @ERR_PTR(i32 %16)
  store %struct.ib_ah* %17, %struct.ib_ah** %4, align 8
  br label %58

18:                                               ; preds = %3
  %19 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %23 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @rdma_port_get_link_layer(i32 %21, i32 %24)
  %26 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %18
  %29 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IB_AH_GRH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ib_ah* @ERR_PTR(i32 %37)
  store %struct.ib_ah* %38, %struct.ib_ah** %9, align 8
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %41 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %42 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %8, align 8
  %43 = call %struct.ib_ah* @create_iboe_ah(%struct.ib_pd* %40, %struct.ib_ah_attr* %41, %struct.mlx4_ib_ah* %42)
  store %struct.ib_ah* %43, %struct.ib_ah** %9, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %46 = call i64 @IS_ERR(%struct.ib_ah* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %8, align 8
  %50 = call i32 @kfree(%struct.mlx4_ib_ah* %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  store %struct.ib_ah* %52, %struct.ib_ah** %4, align 8
  br label %58

53:                                               ; preds = %18
  %54 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %55 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %56 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %8, align 8
  %57 = call %struct.ib_ah* @create_ib_ah(%struct.ib_pd* %54, %struct.ib_ah_attr* %55, %struct.mlx4_ib_ah* %56)
  store %struct.ib_ah* %57, %struct.ib_ah** %4, align 8
  br label %58

58:                                               ; preds = %53, %51, %14
  %59 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  ret %struct.ib_ah* %59
}

declare dso_local %struct.mlx4_ib_ah* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local i64 @rdma_port_get_link_layer(i32, i32) #1

declare dso_local %struct.ib_ah* @create_iboe_ah(%struct.ib_pd*, %struct.ib_ah_attr*, %struct.mlx4_ib_ah*) #1

declare dso_local i64 @IS_ERR(%struct.ib_ah*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_ah*) #1

declare dso_local %struct.ib_ah* @create_ib_ah(%struct.ib_pd*, %struct.ib_ah_attr*, %struct.mlx4_ib_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
