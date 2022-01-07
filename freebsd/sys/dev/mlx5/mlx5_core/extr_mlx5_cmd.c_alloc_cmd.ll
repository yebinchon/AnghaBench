; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cmd_work_ent = type { i32, i32, i32, %struct.mlx5_cmd*, i8*, i64, i8*, %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg* }
%struct.mlx5_cmd = type { i32 }
%struct.mlx5_cmd_msg = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_cmd_work_ent* (%struct.mlx5_cmd*, %struct.mlx5_cmd_msg*, i32, %struct.mlx5_cmd_msg*, i8*, i32, i64, i8*, i32)* @alloc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_cmd_work_ent* @alloc_cmd(%struct.mlx5_cmd* %0, %struct.mlx5_cmd_msg* %1, i32 %2, %struct.mlx5_cmd_msg* %3, i8* %4, i32 %5, i64 %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.mlx5_cmd_work_ent*, align 8
  %11 = alloca %struct.mlx5_cmd*, align 8
  %12 = alloca %struct.mlx5_cmd_msg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_cmd_msg*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.mlx5_cmd_work_ent*, align 8
  store %struct.mlx5_cmd* %0, %struct.mlx5_cmd** %11, align 8
  store %struct.mlx5_cmd_msg* %1, %struct.mlx5_cmd_msg** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.mlx5_cmd_msg* %3, %struct.mlx5_cmd_msg** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load i64, i64* %17, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  br label %28

26:                                               ; preds = %9
  %27 = load i32, i32* @GFP_KERNEL, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = call %struct.mlx5_cmd_work_ent* @kzalloc(i32 64, i32 %30)
  store %struct.mlx5_cmd_work_ent* %31, %struct.mlx5_cmd_work_ent** %21, align 8
  %32 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %33 = icmp ne %struct.mlx5_cmd_work_ent* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.mlx5_cmd_work_ent* @ERR_PTR(i32 %36)
  store %struct.mlx5_cmd_work_ent* %37, %struct.mlx5_cmd_work_ent** %10, align 8
  br label %67

38:                                               ; preds = %28
  %39 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %12, align 8
  %40 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %41 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %40, i32 0, i32 8
  store %struct.mlx5_cmd_msg* %39, %struct.mlx5_cmd_msg** %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %44 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %14, align 8
  %46 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %47 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %46, i32 0, i32 7
  store %struct.mlx5_cmd_msg* %45, %struct.mlx5_cmd_msg** %47, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %50 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %53 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %17, align 8
  %55 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %56 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %55, i32 0, i32 5
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %59 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %11, align 8
  %61 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %62 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %61, i32 0, i32 3
  store %struct.mlx5_cmd* %60, %struct.mlx5_cmd** %62, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  %65 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %21, align 8
  store %struct.mlx5_cmd_work_ent* %66, %struct.mlx5_cmd_work_ent** %10, align 8
  br label %67

67:                                               ; preds = %38, %34
  %68 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %10, align 8
  ret %struct.mlx5_cmd_work_ent* %68
}

declare dso_local %struct.mlx5_cmd_work_ent* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_cmd_work_ent* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
