; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_rdma_create_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_rdma_create_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32, i32, %struct.TYPE_6__, i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vnet* }
%struct.vnet = type { i32 }
%struct.rdma_id_private = type { %struct.rdma_cm_id, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@RDMA_CM_IDLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rdma_cm_id* @rdma_create_id(%struct.vnet* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rdma_cm_id*, align 8
  %7 = alloca %struct.vnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rdma_id_private*, align 8
  store %struct.vnet* %0, %struct.vnet** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.rdma_id_private* @kzalloc(i32 72, i32 %13)
  store %struct.rdma_id_private* %14, %struct.rdma_id_private** %12, align 8
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %16 = icmp ne %struct.rdma_id_private* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.rdma_cm_id* @ERR_PTR(i32 %19)
  store %struct.rdma_cm_id* %20, %struct.rdma_cm_id** %6, align 8
  br label %78

21:                                               ; preds = %5
  %22 = load i32, i32* @current, align 4
  %23 = call i32 @task_pid_nr(i32 %22)
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %25 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @RDMA_CM_IDLE, align 4
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %28 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %31 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %31, i32 0, i32 4
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %35 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %39 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %43 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %46 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %45, i32 0, i32 8
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %49 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %48, i32 0, i32 7
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %52 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %51, i32 0, i32 6
  %53 = call i32 @init_completion(i32* %52)
  %54 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %55 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %54, i32 0, i32 5
  %56 = call i32 @atomic_set(i32* %55, i32 1)
  %57 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %58 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %57, i32 0, i32 4
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %61 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %60, i32 0, i32 3
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %64 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %63, i32 0, i32 2
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %67 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %66, i32 0, i32 1
  %68 = call i32 @get_random_bytes(i32* %67, i32 4)
  %69 = load %struct.vnet*, %struct.vnet** %7, align 8
  %70 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %71 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.vnet* %69, %struct.vnet** %75, align 8
  %76 = load %struct.rdma_id_private*, %struct.rdma_id_private** %12, align 8
  %77 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %76, i32 0, i32 0
  store %struct.rdma_cm_id* %77, %struct.rdma_cm_id** %6, align 8
  br label %78

78:                                               ; preds = %21, %17
  %79 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  ret %struct.rdma_cm_id* %79
}

declare dso_local %struct.rdma_id_private* @kzalloc(i32, i32) #1

declare dso_local %struct.rdma_cm_id* @ERR_PTR(i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
