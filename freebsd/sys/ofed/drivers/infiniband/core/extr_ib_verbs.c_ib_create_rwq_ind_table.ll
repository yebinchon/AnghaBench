; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_rwq_ind_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_rwq_ind_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_rwq_ind_table = type { i32, %struct.TYPE_2__**, i32, i32*, %struct.ib_device* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_device = type { %struct.ib_rwq_ind_table* (%struct.ib_device*, %struct.ib_rwq_ind_table_init_attr*, i32*)* }
%struct.ib_rwq_ind_table_init_attr = type { i32, %struct.TYPE_2__** }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_rwq_ind_table* @ib_create_rwq_ind_table(%struct.ib_device* %0, %struct.ib_rwq_ind_table_init_attr* %1) #0 {
  %3 = alloca %struct.ib_rwq_ind_table*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_rwq_ind_table_init_attr*, align 8
  %6 = alloca %struct.ib_rwq_ind_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_rwq_ind_table_init_attr* %1, %struct.ib_rwq_ind_table_init_attr** %5, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 0
  %11 = load %struct.ib_rwq_ind_table* (%struct.ib_device*, %struct.ib_rwq_ind_table_init_attr*, i32*)*, %struct.ib_rwq_ind_table* (%struct.ib_device*, %struct.ib_rwq_ind_table_init_attr*, i32*)** %10, align 8
  %12 = icmp ne %struct.ib_rwq_ind_table* (%struct.ib_device*, %struct.ib_rwq_ind_table_init_attr*, i32*)* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.ib_rwq_ind_table* @ERR_PTR(i32 %15)
  store %struct.ib_rwq_ind_table* %16, %struct.ib_rwq_ind_table** %3, align 8
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.ib_rwq_ind_table_init_attr*, %struct.ib_rwq_ind_table_init_attr** %5, align 8
  %19 = getelementptr inbounds %struct.ib_rwq_ind_table_init_attr, %struct.ib_rwq_ind_table_init_attr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = load %struct.ib_rwq_ind_table* (%struct.ib_device*, %struct.ib_rwq_ind_table_init_attr*, i32*)*, %struct.ib_rwq_ind_table* (%struct.ib_device*, %struct.ib_rwq_ind_table_init_attr*, i32*)** %23, align 8
  %25 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %26 = load %struct.ib_rwq_ind_table_init_attr*, %struct.ib_rwq_ind_table_init_attr** %5, align 8
  %27 = call %struct.ib_rwq_ind_table* %24(%struct.ib_device* %25, %struct.ib_rwq_ind_table_init_attr* %26, i32* null)
  store %struct.ib_rwq_ind_table* %27, %struct.ib_rwq_ind_table** %6, align 8
  %28 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %6, align 8
  %29 = call i64 @IS_ERR(%struct.ib_rwq_ind_table* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %6, align 8
  store %struct.ib_rwq_ind_table* %32, %struct.ib_rwq_ind_table** %3, align 8
  br label %71

33:                                               ; preds = %17
  %34 = load %struct.ib_rwq_ind_table_init_attr*, %struct.ib_rwq_ind_table_init_attr** %5, align 8
  %35 = getelementptr inbounds %struct.ib_rwq_ind_table_init_attr, %struct.ib_rwq_ind_table_init_attr* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %6, align 8
  %38 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %37, i32 0, i32 1
  store %struct.TYPE_2__** %36, %struct.TYPE_2__*** %38, align 8
  %39 = load %struct.ib_rwq_ind_table_init_attr*, %struct.ib_rwq_ind_table_init_attr** %5, align 8
  %40 = getelementptr inbounds %struct.ib_rwq_ind_table_init_attr, %struct.ib_rwq_ind_table_init_attr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %6, align 8
  %43 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %45 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %6, align 8
  %46 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %45, i32 0, i32 4
  store %struct.ib_device* %44, %struct.ib_device** %46, align 8
  %47 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %6, align 8
  %48 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %6, align 8
  %50 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %49, i32 0, i32 2
  %51 = call i32 @atomic_set(i32* %50, i32 0)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %66, %33
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %6, align 8
  %58 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @atomic_inc(i32* %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %52

69:                                               ; preds = %52
  %70 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %6, align 8
  store %struct.ib_rwq_ind_table* %70, %struct.ib_rwq_ind_table** %3, align 8
  br label %71

71:                                               ; preds = %69, %31, %13
  %72 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  ret %struct.ib_rwq_ind_table* %72
}

declare dso_local %struct.ib_rwq_ind_table* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_rwq_ind_table*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
