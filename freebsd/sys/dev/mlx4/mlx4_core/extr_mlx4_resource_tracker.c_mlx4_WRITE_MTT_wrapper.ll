; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_WRITE_MTT_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_WRITE_MTT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32* }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_mtt = type { i64, i64, i64 }
%struct.res_mtt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RES_MTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_WRITE_MTT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_mtt, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.res_mtt*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %15, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = bitcast i32* %25 to i64*
  store i64* %26, i64** %16, align 8
  store %struct.res_mtt* null, %struct.res_mtt** %18, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @be64_to_cpu(i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %19, align 4
  %32 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %33 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %20, align 4
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %20, align 4
  %39 = call i32 @get_containing_mtt(%struct.mlx4_dev* %35, i32 %36, i32 %37, i32 %38, %struct.res_mtt** %18)
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %21, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %6
  %43 = load i32, i32* %21, align 4
  store i32 %43, i32* %7, align 4
  br label %93

44:                                               ; preds = %6
  %45 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %14, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %14, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %14, i32 0, i32 0
  store i64 0, i64* %47, align 8
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %66, %44
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @be64_to_cpu(i32 %58)
  %60 = and i64 %59, -2
  %61 = load i64*, i64** %16, align 8
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  store i64 %60, i64* %65, align 8
  br label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  br label %48

69:                                               ; preds = %48
  %70 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @be64_to_cpu(i32 %73)
  %75 = load i32, i32* %20, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = bitcast i32* %76 to i64*
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = call i32 @__mlx4_write_mtt(%struct.mlx4_dev* %70, %struct.mlx4_mtt* %14, i64 %74, i32 %75, i64* %78)
  store i32 %79, i32* %21, align 4
  %80 = load %struct.res_mtt*, %struct.res_mtt** %18, align 8
  %81 = icmp ne %struct.res_mtt* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %69
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.res_mtt*, %struct.res_mtt** %18, align 8
  %86 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RES_MTT, align 4
  %90 = call i32 @put_res(%struct.mlx4_dev* %83, i32 %84, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %69
  %92 = load i32, i32* %21, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %42
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @get_containing_mtt(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt**) #1

declare dso_local i32 @__mlx4_write_mtt(%struct.mlx4_dev*, %struct.mlx4_mtt*, i64, i32, i64*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
