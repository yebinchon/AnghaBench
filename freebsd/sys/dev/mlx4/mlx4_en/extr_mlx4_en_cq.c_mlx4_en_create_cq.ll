; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_cq.c_mlx4_en_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_cq.c_mlx4_en_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mlx4_en_cq = type { i32, i32, i32, i32, %struct.TYPE_11__, %struct.mlx4_cqe*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.mlx4_cqe = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate CQ structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"mlx4_en_que\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@RX = common dso_local global i32 0, align 4
@mlx4_en_rx_que = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s rx cq\00", align 1
@mlx4_en_tx_que = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%s tx cq\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_create_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_cq**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_en_dev*, align 8
  %15 = alloca %struct.mlx4_en_cq*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %8, align 8
  store %struct.mlx4_en_cq** %1, %struct.mlx4_en_cq*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 1
  %19 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %18, align 8
  store %struct.mlx4_en_dev* %19, %struct.mlx4_en_dev** %14, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.mlx4_en_cq* @kzalloc_node(i32 48, i32 %20, i32 %21)
  store %struct.mlx4_en_cq* %22, %struct.mlx4_en_cq** %15, align 8
  %23 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %24 = icmp ne %struct.mlx4_en_cq* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mlx4_en_cq* @kzalloc(i32 48, i32 %26)
  store %struct.mlx4_en_cq* %27, %struct.mlx4_en_cq** %15, align 8
  %28 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %29 = icmp ne %struct.mlx4_en_cq* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %32 = call i32 @en_err(%struct.mlx4_en_priv* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %157

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %6
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %42, %48
  %50 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @M_NOWAIT, align 4
  %53 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %54 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %54, i32 0, i32 8
  %56 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32* %55)
  %57 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @RX, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %36
  %63 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %63, i32 0, i32 9
  %65 = load i32, i32* @mlx4_en_rx_que, align 4
  %66 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %67 = call i32 @TASK_INIT(i32* %64, i32 0, i32 %65, %struct.mlx4_en_cq* %66)
  %68 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %68, i32 0, i32 8
  %70 = load i32, i32* @PI_NET, align 4
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @if_name(i32 %73)
  %75 = call i32 @taskqueue_start_threads(i32* %69, i32 1, i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %90

76:                                               ; preds = %36
  %77 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %77, i32 0, i32 9
  %79 = load i32, i32* @mlx4_en_tx_que, align 4
  %80 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %81 = call i32 @TASK_INIT(i32* %78, i32 0, i32 %79, %struct.mlx4_en_cq* %80)
  %82 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %82, i32 0, i32 8
  %84 = load i32, i32* @PI_NET, align 4
  %85 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @if_name(i32 %87)
  %89 = call i32 @taskqueue_start_threads(i32* %83, i32 1, i32 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %76, %62
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %96 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %104 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %106 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %105, i32 0, i32 6
  %107 = call i32 @spin_lock_init(i32* %106)
  %108 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %111, i32 0, i32 4
  %113 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = mul nsw i32 2, %116
  %118 = call i32 @mlx4_alloc_hwq_res(%struct.TYPE_10__* %110, %struct.TYPE_11__* %112, i32 %115, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %90
  br label %152

122:                                              ; preds = %90
  %123 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = call i32 @mlx4_en_map_buffer(%struct.TYPE_12__* %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %142

130:                                              ; preds = %122
  %131 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %132 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to %struct.mlx4_cqe*
  %138 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %139 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %138, i32 0, i32 5
  store %struct.mlx4_cqe* %137, %struct.mlx4_cqe** %139, align 8
  %140 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %141 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %9, align 8
  store %struct.mlx4_en_cq* %140, %struct.mlx4_en_cq** %141, align 8
  store i32 0, i32* %7, align 4
  br label %157

142:                                              ; preds = %129
  %143 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %144 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %147 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %146, i32 0, i32 4
  %148 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @mlx4_free_hwq_res(%struct.TYPE_10__* %145, %struct.TYPE_11__* %147, i32 %150)
  br label %152

152:                                              ; preds = %142, %121
  %153 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %154 = call i32 @kfree(%struct.mlx4_en_cq* %153)
  %155 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %9, align 8
  store %struct.mlx4_en_cq* null, %struct.mlx4_en_cq** %155, align 8
  %156 = load i32, i32* %16, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %152, %130, %30
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local %struct.mlx4_en_cq* @kzalloc_node(i32, i32, i32) #1

declare dso_local %struct.mlx4_en_cq* @kzalloc(i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.mlx4_en_cq*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mlx4_alloc_hwq_res(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mlx4_en_map_buffer(%struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_free_hwq_res(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_en_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
