; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_FUNC.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_FUNC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_func = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32* }

@MLX4_CMD_QUERY_FUNC = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [108 x i8] c"Bus: %d, Device: %d, Function: %d, Physical function: %d, Max EQs: %d, Reserved EQs: %d, Reserved UARs: %d\0A\00", align 1
@QUERY_FUNC_BUS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_DEVICE_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_FUNCTION_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_MAX_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_PHYSICAL_FUNCTION_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_RSVD_EQS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_RSVD_UARS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_FUNC(%struct.mlx4_dev* %0, %struct.mlx4_func* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_func* %1, %struct.mlx4_func** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %15 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %14)
  store %struct.mlx4_cmd_mailbox* %15, %struct.mlx4_cmd_mailbox** %8, align 8
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %17 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %21 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %20)
  store i32 %21, i32* %4, align 4
  br label %117

22:                                               ; preds = %3
  %23 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %24 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %28 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %29 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MLX4_CMD_QUERY_FUNC, align 4
  %33 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %34 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %35 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %27, i32 0, i32 %30, i32 %31, i32 0, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %112

39:                                               ; preds = %22
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @MLX4_GET(i32 %40, i32* %41, i32 0)
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, 15
  %45 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @MLX4_GET(i32 %47, i32* %48, i32 1)
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 241
  %52 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %53 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @MLX4_GET(i32 %54, i32* %55, i32 1)
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 7
  %59 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @MLX4_GET(i32 %61, i32* %62, i32 3)
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 15
  %66 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @MLX4_GET(i32 %68, i32* %69, i32 4)
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 65535
  %73 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %74 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @MLX4_GET(i32 %75, i32* %76, i32 6)
  %78 = load i32, i32* %12, align 4
  %79 = and i32 %78, 65535
  %80 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %81 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @MLX4_GET(i32 %82, i32* %83, i32 11)
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 15
  %87 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %88 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %90 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %91 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %94 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %97 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %100 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %103 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %106 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mlx4_func*, %struct.mlx4_func** %6, align 8
  %109 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mlx4_dbg(%struct.mlx4_dev* %89, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %95, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %39, %38
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %114 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %115 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %113, %struct.mlx4_cmd_mailbox* %114)
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %19
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
