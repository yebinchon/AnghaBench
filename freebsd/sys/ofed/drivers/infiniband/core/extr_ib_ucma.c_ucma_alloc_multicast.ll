; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_alloc_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_alloc_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_multicast = type { i64, i32, %struct.ucma_context* }
%struct.ucma_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mut = common dso_local global i32 0, align 4
@multicast_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucma_multicast* (%struct.ucma_context*)* @ucma_alloc_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucma_multicast* @ucma_alloc_multicast(%struct.ucma_context* %0) #0 {
  %2 = alloca %struct.ucma_multicast*, align 8
  %3 = alloca %struct.ucma_context*, align 8
  %4 = alloca %struct.ucma_multicast*, align 8
  store %struct.ucma_context* %0, %struct.ucma_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ucma_multicast* @kzalloc(i32 24, i32 %5)
  store %struct.ucma_multicast* %6, %struct.ucma_multicast** %4, align 8
  %7 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %8 = icmp ne %struct.ucma_multicast* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ucma_multicast* null, %struct.ucma_multicast** %2, align 8
  br label %36

10:                                               ; preds = %1
  %11 = call i32 @mutex_lock(i32* @mut)
  %12 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @idr_alloc(i32* @multicast_idr, %struct.ucma_multicast* %12, i32 0, i32 0, i32 %13)
  %15 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %16 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = call i32 @mutex_unlock(i32* @mut)
  %18 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %19 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %33

23:                                               ; preds = %10
  %24 = load %struct.ucma_context*, %struct.ucma_context** %3, align 8
  %25 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %26 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %25, i32 0, i32 2
  store %struct.ucma_context* %24, %struct.ucma_context** %26, align 8
  %27 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %28 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %27, i32 0, i32 1
  %29 = load %struct.ucma_context*, %struct.ucma_context** %3, align 8
  %30 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  store %struct.ucma_multicast* %32, %struct.ucma_multicast** %2, align 8
  br label %36

33:                                               ; preds = %22
  %34 = load %struct.ucma_multicast*, %struct.ucma_multicast** %4, align 8
  %35 = call i32 @kfree(%struct.ucma_multicast* %34)
  store %struct.ucma_multicast* null, %struct.ucma_multicast** %2, align 8
  br label %36

36:                                               ; preds = %33, %23, %9
  %37 = load %struct.ucma_multicast*, %struct.ucma_multicast** %2, align 8
  ret %struct.ucma_multicast* %37
}

declare dso_local %struct.ucma_multicast* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @idr_alloc(i32*, %struct.ucma_multicast*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ucma_multicast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
