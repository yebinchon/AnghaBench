; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_core_req_pages_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_core_req_pages_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_pages_req = type { i32, i32, i32, %struct.mlx5_core_dev* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to allocate pages request\0A\00", align 1
@pages_work_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to queue pages handler work\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_core_req_pages_handler(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_pages_req*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.mlx5_pages_req* @kzalloc(i32 24, i32 %8)
  store %struct.mlx5_pages_req* %9, %struct.mlx5_pages_req** %7, align 8
  %10 = load %struct.mlx5_pages_req*, %struct.mlx5_pages_req** %7, align 8
  %11 = icmp ne %struct.mlx5_pages_req* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %14 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %40

15:                                               ; preds = %3
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = load %struct.mlx5_pages_req*, %struct.mlx5_pages_req** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5_pages_req, %struct.mlx5_pages_req* %17, i32 0, i32 3
  store %struct.mlx5_core_dev* %16, %struct.mlx5_core_dev** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mlx5_pages_req*, %struct.mlx5_pages_req** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5_pages_req, %struct.mlx5_pages_req* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.mlx5_pages_req*, %struct.mlx5_pages_req** %7, align 8
  %24 = getelementptr inbounds %struct.mlx5_pages_req, %struct.mlx5_pages_req* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mlx5_pages_req*, %struct.mlx5_pages_req** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_pages_req, %struct.mlx5_pages_req* %25, i32 0, i32 0
  %27 = load i32, i32* @pages_work_handler, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_pages_req*, %struct.mlx5_pages_req** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5_pages_req, %struct.mlx5_pages_req* %33, i32 0, i32 0
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %15
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %39 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %12, %37, %15
  ret void
}

declare dso_local %struct.mlx5_pages_req* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
