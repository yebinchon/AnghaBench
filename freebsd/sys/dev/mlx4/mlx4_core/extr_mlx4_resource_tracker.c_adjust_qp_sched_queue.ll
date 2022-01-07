; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_adjust_qp_sched_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_adjust_qp_sched_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_qp_context = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_cmd_mailbox = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH = common dso_local global i32 0, align 4
@MLX4_QP_OPTPAR_SCHED_QUEUE = common dso_local global i32 0, align 4
@MLX4_QP_OPTPAR_ALT_ADDR_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_qp_context*, %struct.mlx4_cmd_mailbox*)* @adjust_qp_sched_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_qp_sched_queue(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_qp_context* %2, %struct.mlx4_cmd_mailbox* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_qp_context*, align 8
  %9 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx4_qp_context* %2, %struct.mlx4_qp_context** %8, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %9, align 8
  %13 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %14 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %8, align 8
  %22 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 6
  %26 = and i32 %25, 1
  %27 = add nsw i32 %26, 1
  %28 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %19, i32 %20, i32 %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %104

35:                                               ; preds = %4
  %36 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %8, align 8
  %37 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -65
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %41, 1
  %43 = shl i32 %42, 6
  %44 = or i32 %40, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH, align 4
  %47 = load i32, i32* @MLX4_QP_OPTPAR_SCHED_QUEUE, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %35
  %52 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %8, align 8
  %53 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i64 @mlx4_is_eth(%struct.mlx4_dev* %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57, %51, %35
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %8, align 8
  %66 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @MLX4_QP_OPTPAR_ALT_ADDR_PATH, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %68
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %8, align 8
  %77 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 6
  %81 = and i32 %80, 1
  %82 = add nsw i32 %81, 1
  %83 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %74, i32 %75, i32 %82)
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %104

90:                                               ; preds = %73
  %91 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %8, align 8
  %92 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, -65
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 1
  %98 = shl i32 %97, 6
  %99 = or i32 %95, %98
  %100 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %8, align 8
  %101 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %90, %68
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %87, %32
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i64 @mlx4_is_eth(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
