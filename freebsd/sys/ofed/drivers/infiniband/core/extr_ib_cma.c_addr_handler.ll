; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_addr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_addr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rdma_dev_addr = type { i32 }
%struct.rdma_id_private = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_3__*, %struct.rdma_cm_event*)* }
%struct.rdma_cm_event = type opaque
%struct.rdma_cm_event.0 = type { i32, i32 }

@RDMA_CM_ADDR_QUERY = common dso_local global i32 0, align 4
@RDMA_CM_ADDR_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_ADDR_BOUND = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ADDR_ERROR = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ADDR_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, %struct.rdma_dev_addr*, i8*)* @addr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_handler(i32 %0, %struct.sockaddr* %1, %struct.rdma_dev_addr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rdma_id_private*, align 8
  %10 = alloca %struct.rdma_cm_event.0, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.rdma_id_private*
  store %struct.rdma_id_private* %12, %struct.rdma_id_private** %9, align 8
  %13 = call i32 @memset(%struct.rdma_cm_event.0* %10, i32 0, i32 8)
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %15 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %18 = load i32, i32* @RDMA_CM_ADDR_QUERY, align 4
  %19 = load i32, i32* @RDMA_CM_ADDR_RESOLVED, align 4
  %20 = call i32 @cma_comp_exch(%struct.rdma_id_private* %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %81

23:                                               ; preds = %4
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %25 = call i32 @cma_src_addr(%struct.rdma_id_private* %24)
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = call i32 @rdma_addr_size(%struct.sockaddr* %27)
  %29 = call i32 @memcpy(i32 %25, %struct.sockaddr* %26, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %34 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %39 = call i32 @cma_acquire_dev(%struct.rdma_id_private* %38, i32* null)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %32, %23
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %45 = load i32, i32* @RDMA_CM_ADDR_RESOLVED, align 4
  %46 = load i32, i32* @RDMA_CM_ADDR_BOUND, align 4
  %47 = call i32 @cma_comp_exch(%struct.rdma_id_private* %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %81

50:                                               ; preds = %43
  %51 = load i32, i32* @RDMA_CM_EVENT_ADDR_ERROR, align 4
  %52 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %40
  %56 = load i32, i32* @RDMA_CM_EVENT_ADDR_RESOLVED, align 4
  %57 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %10, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %60 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64 (%struct.TYPE_3__*, %struct.rdma_cm_event*)*, i64 (%struct.TYPE_3__*, %struct.rdma_cm_event*)** %61, align 8
  %63 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %64 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %63, i32 0, i32 1
  %65 = bitcast %struct.rdma_cm_event.0* %10 to %struct.rdma_cm_event*
  %66 = call i64 %62(%struct.TYPE_3__* %64, %struct.rdma_cm_event* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %58
  %69 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %70 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %71 = call i32 @cma_exch(%struct.rdma_id_private* %69, i32 %70)
  %72 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %73 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %76 = call i32 @cma_deref_id(%struct.rdma_id_private* %75)
  %77 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %78 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %77, i32 0, i32 1
  %79 = call i32 @rdma_destroy_id(%struct.TYPE_3__* %78)
  br label %87

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %49, %22
  %82 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %83 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.rdma_id_private*, %struct.rdma_id_private** %9, align 8
  %86 = call i32 @cma_deref_id(%struct.rdma_id_private* %85)
  br label %87

87:                                               ; preds = %81, %68
  ret void
}

declare dso_local i32 @memset(%struct.rdma_cm_event.0*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cma_comp_exch(%struct.rdma_id_private*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_addr_size(%struct.sockaddr*) #1

declare dso_local i32 @cma_acquire_dev(%struct.rdma_id_private*, i32*) #1

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cma_deref_id(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
