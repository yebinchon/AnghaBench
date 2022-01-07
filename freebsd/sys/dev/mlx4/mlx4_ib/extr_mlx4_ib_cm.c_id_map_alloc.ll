; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_id_map_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_id_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id_map_entry = type { i32, i32, i8*, i32, %struct.TYPE_2__*, i64, i8* }
%struct.TYPE_2__ = type { %struct.mlx4_ib_sriov }
%struct.mlx4_ib_sriov = type { i32, i32, i32 }
%struct.ib_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Couldn't allocate id cache entry - out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@id_map_ent_timeout = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"No more space in the idr (err:0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.id_map_entry* (%struct.ib_device*, i32, i8*)* @id_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.id_map_entry* @id_map_alloc(%struct.ib_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.id_map_entry*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.id_map_entry*, align 8
  %10 = alloca %struct.mlx4_ib_sriov*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.mlx4_ib_sriov* %13, %struct.mlx4_ib_sriov** %10, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.id_map_entry* @kmalloc(i32 48, i32 %14)
  store %struct.id_map_entry* %15, %struct.id_map_entry** %9, align 8
  %16 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %17 = icmp ne %struct.id_map_entry* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.id_map_entry* @ERR_PTR(i32 %22)
  store %struct.id_map_entry* %23, %struct.id_map_entry** %4, align 8
  br label %87

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %27 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %30 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %32 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %34 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %33)
  %35 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %36 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %35, i32 0, i32 4
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %38 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %37, i32 0, i32 3
  %39 = load i32, i32* @id_map_ent_timeout, align 4
  %40 = call i32 @INIT_DELAYED_WORK(i32* %38, i32 %39)
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @idr_preload(i32 %41)
  %43 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %44 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %48, i32 0, i32 2
  %50 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %51 = load i32, i32* @GFP_NOWAIT, align 4
  %52 = call i32 @idr_alloc_cyclic(i32* %49, %struct.id_map_entry* %50, i32 0, i32 0, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %24
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %60 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %62 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %63 = call i32 @sl_id_map_add(%struct.ib_device* %61, %struct.id_map_entry* %62)
  %64 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %65 = getelementptr inbounds %struct.id_map_entry, %struct.id_map_entry* %64, i32 0, i32 1
  %66 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %66, i32 0, i32 1
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  br label %69

69:                                               ; preds = %55, %24
  %70 = load %struct.mlx4_ib_sriov*, %struct.mlx4_ib_sriov** %10, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_sriov, %struct.mlx4_ib_sriov* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = call i32 (...) @idr_preload_end()
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  store %struct.id_map_entry* %77, %struct.id_map_entry** %4, align 8
  br label %87

78:                                               ; preds = %69
  %79 = load %struct.id_map_entry*, %struct.id_map_entry** %9, align 8
  %80 = call i32 @kfree(%struct.id_map_entry* %79)
  %81 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.id_map_entry* @ERR_PTR(i32 %85)
  store %struct.id_map_entry* %86, %struct.id_map_entry** %4, align 8
  br label %87

87:                                               ; preds = %78, %76, %18
  %88 = load %struct.id_map_entry*, %struct.id_map_entry** %4, align 8
  ret %struct.id_map_entry* %88
}

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.id_map_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_ib_warn(%struct.ib_device*, i8*, ...) #1

declare dso_local %struct.id_map_entry* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.id_map_entry*, i32, i32, i32) #1

declare dso_local i32 @sl_id_map_add(%struct.ib_device*, %struct.id_map_entry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @kfree(%struct.id_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
