; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_QUERY_EQ_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_QUERY_EQ_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_eq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RES_EQ = common dso_local global i32 0, align 4
@RES_EQ_HW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_EQ_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_eq*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %18 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %19 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 10
  %24 = or i32 %21, %23
  store i32 %24, i32* %15, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @RES_EQ, align 4
  %29 = call i32 @get_res(%struct.mlx4_dev* %25, i32 %26, i32 %27, i32 %28, %struct.res_eq** %16)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %7, align 4
  br label %59

34:                                               ; preds = %6
  %35 = load %struct.res_eq*, %struct.res_eq** %16, align 8
  %36 = getelementptr inbounds %struct.res_eq, %struct.res_eq* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RES_EQ_HW, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %17, align 4
  br label %52

44:                                               ; preds = %34
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %48 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %49 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %50 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %51 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %45, i32 %46, %struct.mlx4_vhcr* %47, %struct.mlx4_cmd_mailbox* %48, %struct.mlx4_cmd_mailbox* %49, %struct.mlx4_cmd_info* %50)
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @RES_EQ, align 4
  %57 = call i32 @put_res(%struct.mlx4_dev* %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %52, %32
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_eq**) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
