; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_alloc_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_alloc_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_bind_list = type { i32, i16 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rdma_id_private*, i16)* @cma_alloc_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_alloc_port(i32 %0, %struct.rdma_id_private* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.rdma_bind_list*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.rdma_id_private* %1, %struct.rdma_id_private** %6, align 8
  store i16 %2, i16* %7, align 2
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rdma_bind_list* @kzalloc(i32 8, i32 %10)
  store %struct.rdma_bind_list* %11, %struct.rdma_bind_list** %8, align 8
  %12 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %13 = icmp ne %struct.rdma_bind_list* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %19 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %27 = load i16, i16* %7, align 2
  %28 = call i32 @cma_ps_alloc(i32 %24, i32 %25, %struct.rdma_bind_list* %26, i16 zeroext %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %43

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %35 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = trunc i32 %36 to i16
  %38 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %39 = getelementptr inbounds %struct.rdma_bind_list, %struct.rdma_bind_list* %38, i32 0, i32 1
  store i16 %37, i16* %39, align 4
  %40 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %41 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %42 = call i32 @cma_bind_port(%struct.rdma_bind_list* %40, %struct.rdma_id_private* %41)
  store i32 0, i32* %4, align 4
  br label %57

43:                                               ; preds = %31
  %44 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %8, align 8
  %45 = call i32 @kfree(%struct.rdma_bind_list* %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EADDRNOTAVAIL, align 4
  %52 = sub nsw i32 0, %51
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %52, %50 ], [ %54, %53 ]
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %32, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.rdma_bind_list* @kzalloc(i32, i32) #1

declare dso_local i32 @cma_ps_alloc(i32, i32, %struct.rdma_bind_list*, i16 zeroext) #1

declare dso_local i32 @cma_bind_port(%struct.rdma_bind_list*, %struct.rdma_id_private*) #1

declare dso_local i32 @kfree(%struct.rdma_bind_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
