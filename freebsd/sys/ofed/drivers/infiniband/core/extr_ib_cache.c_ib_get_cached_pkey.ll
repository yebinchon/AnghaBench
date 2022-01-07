; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_ib_get_cached_pkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_ib_get_cached_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ib_pkey_cache** }
%struct.ib_pkey_cache = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_cached_pkey(%struct.ib_device* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_pkey_cache*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = call i64 @rdma_start_port(%struct.ib_device* %14)
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %20 = call i64 @rdma_end_port(%struct.ib_device* %19)
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %68

25:                                               ; preds = %17
  %26 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %27 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @read_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %32 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.ib_pkey_cache**, %struct.ib_pkey_cache*** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %37 = call i64 @rdma_start_port(%struct.ib_device* %36)
  %38 = sub nsw i64 %35, %37
  %39 = getelementptr inbounds %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %34, i64 %38
  %40 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %39, align 8
  store %struct.ib_pkey_cache* %40, %struct.ib_pkey_cache** %10, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %46 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %25
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %61

52:                                               ; preds = %43
  %53 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %54 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %49
  %62 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %63 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @read_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %22
  %69 = load i32, i32* %5, align 4
  ret i32 %69
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
