; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_DMA_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_DMA_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i64 }
%struct.mlx4_cmd_info = type { i32, i64, i64, i64 }

@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_vhcr*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %9, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %10, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %12, align 8
  %16 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %12, align 8
  %17 = getelementptr inbounds %struct.mlx4_cmd_info, %struct.mlx4_cmd_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  br label %29

25:                                               ; preds = %6
  %26 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %27 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %24, %20 ], [ %28, %25 ]
  store i32 %30, i32* %13, align 4
  %31 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %12, align 8
  %32 = getelementptr inbounds %struct.mlx4_cmd_info, %struct.mlx4_cmd_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %37 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %42 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %39, %35 ], [ %43, %40 ]
  store i32 %45, i32* %14, align 4
  %46 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %12, align 8
  %47 = getelementptr inbounds %struct.mlx4_cmd_info, %struct.mlx4_cmd_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, -256
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %50, %44
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %12, align 8
  %62 = getelementptr inbounds %struct.mlx4_cmd_info, %struct.mlx4_cmd_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %65 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %68 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %71 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %74 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %75 = call i32 @__mlx4_cmd(%struct.mlx4_dev* %59, i32 %60, i32* %14, i32 %63, i32 %66, i32 %69, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %12, align 8
  %77 = getelementptr inbounds %struct.mlx4_cmd_info, %struct.mlx4_cmd_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %58
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %83 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %58
  %85 = load i32, i32* %15, align 4
  ret i32 %85
}

declare dso_local i32 @__mlx4_cmd(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
