; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c__gid_table_setup_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c__gid_table_setup_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { %struct.ib_gid_table** }
%struct.ib_gid_table = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to allocate ib gid cache for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*)* @_gid_table_setup_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gid_table_setup_one(%struct.ib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ib_gid_table**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %9 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ib_gid_table** @kcalloc(i64 %10, i32 8, i32 %11)
  store %struct.ib_gid_table** %12, %struct.ib_gid_table*** %5, align 8
  %13 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %5, align 8
  %14 = icmp ne %struct.ib_gid_table** %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %17 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %106

22:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %68, %22
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %32 = call i64 @rdma_start_port(%struct.ib_device* %31)
  %33 = add i64 %30, %32
  store i64 %33, i64* %7, align 8
  %34 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %35 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.ib_gid_table* @alloc_gid_table(i32 %40)
  %42 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.ib_gid_table*, %struct.ib_gid_table** %42, i64 %43
  store %struct.ib_gid_table* %41, %struct.ib_gid_table** %44, align 8
  %45 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %5, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.ib_gid_table*, %struct.ib_gid_table** %45, i64 %46
  %48 = load %struct.ib_gid_table*, %struct.ib_gid_table** %47, align 8
  %49 = icmp ne %struct.ib_gid_table* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %29
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %76

53:                                               ; preds = %29
  %54 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %57 = call i64 @rdma_start_port(%struct.ib_device* %56)
  %58 = add i64 %55, %57
  %59 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %5, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.ib_gid_table*, %struct.ib_gid_table** %59, i64 %60
  %62 = load %struct.ib_gid_table*, %struct.ib_gid_table** %61, align 8
  %63 = call i32 @gid_table_reserve_default(%struct.ib_device* %54, i64 %58, %struct.ib_gid_table* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %76

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %4, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %23

71:                                               ; preds = %23
  %72 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %5, align 8
  %73 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %74 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.ib_gid_table** %72, %struct.ib_gid_table*** %75, align 8
  store i32 0, i32* %2, align 4
  br label %106

76:                                               ; preds = %66, %50
  store i64 0, i64* %4, align 8
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i64, i64* %4, align 8
  %79 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %80 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %87 = call i64 @rdma_start_port(%struct.ib_device* %86)
  %88 = add i64 %85, %87
  %89 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %5, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds %struct.ib_gid_table*, %struct.ib_gid_table** %89, i64 %90
  %92 = load %struct.ib_gid_table*, %struct.ib_gid_table** %91, align 8
  %93 = call i32 @cleanup_gid_table_port(%struct.ib_device* %84, i64 %88, %struct.ib_gid_table* %92)
  %94 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %5, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds %struct.ib_gid_table*, %struct.ib_gid_table** %94, i64 %95
  %97 = load %struct.ib_gid_table*, %struct.ib_gid_table** %96, align 8
  %98 = call i32 @release_gid_table(%struct.ib_gid_table* %97)
  br label %99

99:                                               ; preds = %83
  %100 = load i64, i64* %4, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %4, align 8
  br label %77

102:                                              ; preds = %77
  %103 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %5, align 8
  %104 = call i32 @kfree(%struct.ib_gid_table** %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %71, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.ib_gid_table** @kcalloc(i64, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i64 @rdma_start_port(%struct.ib_device*) #1

declare dso_local %struct.ib_gid_table* @alloc_gid_table(i32) #1

declare dso_local i32 @gid_table_reserve_default(%struct.ib_device*, i64, %struct.ib_gid_table*) #1

declare dso_local i32 @cleanup_gid_table_port(%struct.ib_device*, i64, %struct.ib_gid_table*) #1

declare dso_local i32 @release_gid_table(%struct.ib_gid_table*) #1

declare dso_local i32 @kfree(%struct.ib_gid_table**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
