; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_2RST_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_2RST_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_qp = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@RES_QP_MAPPED = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_2RST_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_qp*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %17 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %18 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 8388607
  store i32 %20, i32* %15, align 4
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @RES_QP_MAPPED, align 4
  %25 = call i32 @qp_res_start_move_to(%struct.mlx4_dev* %21, i32 %22, i32 %23, i32 %24, %struct.res_qp** %16, i32 0)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %7, align 4
  br label %80

30:                                               ; preds = %6
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %34 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %35 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %36 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %37 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %31, i32 %32, %struct.mlx4_vhcr* %33, %struct.mlx4_cmd_mailbox* %34, %struct.mlx4_cmd_mailbox* %35, %struct.mlx4_cmd_info* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %73

41:                                               ; preds = %30
  %42 = load %struct.res_qp*, %struct.res_qp** %16, align 8
  %43 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @atomic_dec(i32* %45)
  %47 = load %struct.res_qp*, %struct.res_qp** %16, align 8
  %48 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @atomic_dec(i32* %50)
  %52 = load %struct.res_qp*, %struct.res_qp** %16, align 8
  %53 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @atomic_dec(i32* %55)
  %57 = load %struct.res_qp*, %struct.res_qp** %16, align 8
  %58 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %41
  %62 = load %struct.res_qp*, %struct.res_qp** %16, align 8
  %63 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @atomic_dec(i32* %65)
  br label %67

67:                                               ; preds = %61, %41
  %68 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @RES_QP, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @res_end_move(%struct.mlx4_dev* %68, i32 %69, i32 %70, i32 %71)
  store i32 0, i32* %7, align 4
  br label %80

73:                                               ; preds = %40
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @RES_QP, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @res_abort_move(%struct.mlx4_dev* %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %73, %67, %28
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @qp_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**, i32) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
