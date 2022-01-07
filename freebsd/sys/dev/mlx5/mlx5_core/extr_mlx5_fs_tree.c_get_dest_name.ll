; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_get_dest_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_get_dest_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_destination = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dest_%s_%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"flow_table\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"vport\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx5_flow_destination*)* @get_dest_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_dest_name(%struct.mlx5_flow_destination* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlx5_flow_destination*, align 8
  %4 = alloca i8*, align 8
  store %struct.mlx5_flow_destination* %0, %struct.mlx5_flow_destination** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 20, i32 %5)
  store i8* %6, i8** %4, align 8
  %7 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %33 [
    i32 130, label %10
    i32 128, label %19
    i32 129, label %26
  ]

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snprintf(i8* %11, i32 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %2, align 8
  br label %36

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snprintf(i8* %20, i32 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %2, align 8
  br label %36

26:                                               ; preds = %1
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snprintf(i8* %27, i32 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %2, align 8
  br label %36

33:                                               ; preds = %1
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @kfree(i8* %34)
  store i8* null, i8** %2, align 8
  br label %36

36:                                               ; preds = %33, %26, %19, %10
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
