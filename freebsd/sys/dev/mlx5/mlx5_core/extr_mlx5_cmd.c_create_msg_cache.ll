; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_create_msg_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_create_msg_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_cmd }
%struct.mlx5_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_cmd_msg = type { i32, %struct.TYPE_3__* }

@NUM_LONG_LISTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LONG_LIST_SIZE = common dso_local global i32 0, align 4
@NUM_MED_LISTS = common dso_local global i32 0, align 4
@MED_LIST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @create_msg_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_msg_cache(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_cmd*, align 8
  %5 = alloca %struct.mlx5_cmd_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  store %struct.mlx5_cmd* %9, %struct.mlx5_cmd** %4, align 8
  %10 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %58, %1
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @NUM_LONG_LISTS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load i32, i32* @LONG_LIST_SIZE, align 4
  %38 = call %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev* %35, i32 %36, i32 %37)
  store %struct.mlx5_cmd_msg* %38, %struct.mlx5_cmd_msg** %5, align 8
  %39 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %40 = call i64 @IS_ERR(%struct.mlx5_cmd_msg* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %44 = call i32 @PTR_ERR(%struct.mlx5_cmd_msg* %43)
  store i32 %44, i32* %6, align 4
  br label %94

45:                                               ; preds = %34
  %46 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %49, i32 0, i32 1
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %50, align 8
  %51 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %52 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %51, i32 0, i32 0
  %53 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @list_add_tail(i32* %52, i32* %56)
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %30

61:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %90, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @NUM_MED_LISTS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %62
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = load i32, i32* @MED_LIST_SIZE, align 4
  %70 = call %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev* %67, i32 %68, i32 %69)
  store %struct.mlx5_cmd_msg* %70, %struct.mlx5_cmd_msg** %5, align 8
  %71 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %72 = call i64 @IS_ERR(%struct.mlx5_cmd_msg* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %76 = call i32 @PTR_ERR(%struct.mlx5_cmd_msg* %75)
  store i32 %76, i32* %6, align 4
  br label %94

77:                                               ; preds = %66
  %78 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %79 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %82 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %81, i32 0, i32 1
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %82, align 8
  %83 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  %84 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %83, i32 0, i32 0
  %85 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %86 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = call i32 @list_add_tail(i32* %84, i32* %88)
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %62

93:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %98

94:                                               ; preds = %74, %42
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %96 = call i32 @destroy_msg_cache(%struct.mlx5_core_dev* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %93
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_cmd_msg*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_cmd_msg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @destroy_msg_cache(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
