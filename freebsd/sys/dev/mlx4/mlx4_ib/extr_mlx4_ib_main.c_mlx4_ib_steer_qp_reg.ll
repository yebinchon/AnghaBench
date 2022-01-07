; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_steer_qp_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_steer_qp_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_qp = type { i32, i32, i32 }
%struct.ib_flow_attr = type { i32, i64, i32 }
%struct.ib_flow_spec_ib = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_FLOW_SPEC_IB = common dso_local global i32 0, align 4
@IB_FLOW_DOMAIN_NIC = common dso_local global i32 0, align 4
@MLX4_FS_REGULAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_steer_qp_reg(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_qp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ib_flow_attr*, align 8
  %11 = alloca %struct.ib_flow_spec_ib*, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_flow_attr* null, %struct.ib_flow_attr** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %3
  store i64 36, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ib_flow_attr* @kzalloc(i64 %15, i32 %16)
  store %struct.ib_flow_attr* %17, %struct.ib_flow_attr** %10, align 8
  %18 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %19 = icmp ne %struct.ib_flow_attr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %14
  %24 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %28 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %30 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %33 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %35 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %34, i64 1
  %36 = bitcast %struct.ib_flow_attr* %35 to %struct.ib_flow_spec_ib*
  store %struct.ib_flow_spec_ib* %36, %struct.ib_flow_spec_ib** %11, align 8
  %37 = load i32, i32* @IB_FLOW_SPEC_IB, align 4
  %38 = load %struct.ib_flow_spec_ib*, %struct.ib_flow_spec_ib** %11, align 8
  %39 = getelementptr inbounds %struct.ib_flow_spec_ib, %struct.ib_flow_spec_ib* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ib_flow_spec_ib*, %struct.ib_flow_spec_ib** %11, align 8
  %41 = getelementptr inbounds %struct.ib_flow_spec_ib, %struct.ib_flow_spec_ib* %40, i32 0, i32 0
  store i32 12, i32* %41, align 4
  %42 = load %struct.ib_flow_spec_ib*, %struct.ib_flow_spec_ib** %11, align 8
  %43 = getelementptr inbounds %struct.ib_flow_spec_ib, %struct.ib_flow_spec_ib* %42, i32 0, i32 1
  %44 = call i32 @memset(i32* %43, i32 0, i32 4)
  %45 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %45, i32 0, i32 1
  %47 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %48 = load i32, i32* @IB_FLOW_DOMAIN_NIC, align 4
  %49 = load i32, i32* @MLX4_FS_REGULAR, align 4
  %50 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %50, i32 0, i32 0
  %52 = call i32 @__mlx4_ib_create_flow(i32* %46, %struct.ib_flow_attr* %47, i32 %48, i32 %49, i32* %51)
  store i32 %52, i32* %8, align 4
  br label %61

53:                                               ; preds = %3
  %54 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @__mlx4_ib_destroy_flow(i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %53, %23
  %62 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %63 = call i32 @kfree(%struct.ib_flow_attr* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %20
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.ib_flow_attr* @kzalloc(i64, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @__mlx4_ib_create_flow(i32*, %struct.ib_flow_attr*, i32, i32, i32*) #1

declare dso_local i32 @__mlx4_ib_destroy_flow(i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_flow_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
