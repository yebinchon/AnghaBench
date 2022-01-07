; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_set_vma_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_set_vma_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32*, %struct.mlx5_ib_vma_private_data* }
%struct.mlx5_ib_vma_private_data = type { i32, %struct.vm_area_struct* }
%struct.mlx5_ib_ucontext = type { %struct.list_head }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlx5_ib_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.mlx5_ib_ucontext*)* @mlx5_ib_set_vma_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_set_vma_data(%struct.vm_area_struct* %0, %struct.mlx5_ib_ucontext* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mlx5_ib_ucontext*, align 8
  %6 = alloca %struct.mlx5_ib_vma_private_data*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.mlx5_ib_ucontext* %1, %struct.mlx5_ib_ucontext** %5, align 8
  %8 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %8, i32 0, i32 0
  store %struct.list_head* %9, %struct.list_head** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mlx5_ib_vma_private_data* @kzalloc(i32 16, i32 %10)
  store %struct.mlx5_ib_vma_private_data* %11, %struct.mlx5_ib_vma_private_data** %6, align 8
  %12 = load %struct.mlx5_ib_vma_private_data*, %struct.mlx5_ib_vma_private_data** %6, align 8
  %13 = icmp ne %struct.mlx5_ib_vma_private_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = load %struct.mlx5_ib_vma_private_data*, %struct.mlx5_ib_vma_private_data** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_vma_private_data, %struct.mlx5_ib_vma_private_data* %19, i32 0, i32 1
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %20, align 8
  %21 = load %struct.mlx5_ib_vma_private_data*, %struct.mlx5_ib_vma_private_data** %6, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 1
  store %struct.mlx5_ib_vma_private_data* %21, %struct.mlx5_ib_vma_private_data** %23, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  store i32* @mlx5_ib_vm_ops, i32** %25, align 8
  %26 = load %struct.mlx5_ib_vma_private_data*, %struct.mlx5_ib_vma_private_data** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_vma_private_data, %struct.mlx5_ib_vma_private_data* %26, i32 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %7, align 8
  %29 = call i32 @list_add(i32* %27, %struct.list_head* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %17, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.mlx5_ib_vma_private_data* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
