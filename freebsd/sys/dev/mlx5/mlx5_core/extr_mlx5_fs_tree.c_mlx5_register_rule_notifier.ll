; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_register_rule_notifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_register_rule_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handler = type { i32, %struct.mlx5_flow_namespace*, i8*, i8*, i8* }
%struct.mlx5_flow_namespace = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_handler* @mlx5_register_rule_notifier(%struct.mlx5_core_dev* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.mlx5_flow_handler*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mlx5_flow_namespace*, align 8
  %13 = alloca %struct.mlx5_flow_handler*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(%struct.mlx5_core_dev* %14, i32 %15)
  store %struct.mlx5_flow_namespace* %16, %struct.mlx5_flow_namespace** %12, align 8
  %17 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %18 = icmp ne %struct.mlx5_flow_namespace* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.mlx5_flow_handler* @ERR_PTR(i32 %21)
  store %struct.mlx5_flow_handler* %22, %struct.mlx5_flow_handler** %6, align 8
  br label %57

23:                                               ; preds = %5
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mlx5_flow_handler* @kzalloc(i32 40, i32 %24)
  store %struct.mlx5_flow_handler* %25, %struct.mlx5_flow_handler** %13, align 8
  %26 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %13, align 8
  %27 = icmp ne %struct.mlx5_flow_handler* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.mlx5_flow_handler* @ERR_PTR(i32 %30)
  store %struct.mlx5_flow_handler* %31, %struct.mlx5_flow_handler** %6, align 8
  br label %57

32:                                               ; preds = %23
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %13, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_handler, %struct.mlx5_flow_handler* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %13, align 8
  %38 = getelementptr inbounds %struct.mlx5_flow_handler, %struct.mlx5_flow_handler* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %13, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_handler, %struct.mlx5_flow_handler* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %43 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %13, align 8
  %44 = getelementptr inbounds %struct.mlx5_flow_handler, %struct.mlx5_flow_handler* %43, i32 0, i32 1
  store %struct.mlx5_flow_namespace* %42, %struct.mlx5_flow_namespace** %44, align 8
  %45 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %46 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %45, i32 0, i32 0
  %47 = call i32 @down_write(i32* %46)
  %48 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %13, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_handler, %struct.mlx5_flow_handler* %48, i32 0, i32 0
  %50 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %50, i32 0, i32 1
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  %53 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %12, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %53, i32 0, i32 0
  %55 = call i32 @up_write(i32* %54)
  %56 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %13, align 8
  store %struct.mlx5_flow_handler* %56, %struct.mlx5_flow_handler** %6, align 8
  br label %57

57:                                               ; preds = %32, %28, %19
  %58 = load %struct.mlx5_flow_handler*, %struct.mlx5_flow_handler** %6, align 8
  ret %struct.mlx5_flow_handler* %58
}

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(%struct.mlx5_core_dev*, i32) #1

declare dso_local %struct.mlx5_flow_handler* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_handler* @kzalloc(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
