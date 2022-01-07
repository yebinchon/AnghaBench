; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_ib_find_cached_pkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_ib_find_cached_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ib_pkey_cache** }
%struct.ib_pkey_cache = type { i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_cached_pkey(%struct.ib_device* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_pkey_cache*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = call i64 @rdma_start_port(%struct.ib_device* %18)
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = call i64 @rdma_end_port(%struct.ib_device* %23)
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %100

29:                                               ; preds = %21
  %30 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @read_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %36 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.ib_pkey_cache**, %struct.ib_pkey_cache*** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %41 = call i64 @rdma_start_port(%struct.ib_device* %40)
  %42 = sub nsw i64 %39, %41
  %43 = getelementptr inbounds %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %38, i64 %42
  %44 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %43, align 8
  store %struct.ib_pkey_cache* %44, %struct.ib_pkey_cache** %10, align 8
  %45 = load i32*, i32** %9, align 8
  store i32 -1, i32* %45, align 4
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %81, %29
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %49 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %54 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 32767
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 32767
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %52
  %65 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %66 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 32768
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %13, align 4
  br label %84

77:                                               ; preds = %64
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %52
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %46

84:                                               ; preds = %74, %46
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %90, %87, %84
  %94 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %95 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @read_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %93, %26
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i64 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
