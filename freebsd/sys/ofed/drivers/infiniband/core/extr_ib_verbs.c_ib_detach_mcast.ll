; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_detach_mcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_detach_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%union.ib_gid = type { i64 }
%struct.in6_addr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_detach_mcast(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.ib_qp*, %union.ib_gid*, i32)**
  %14 = load i32 (%struct.ib_qp*, %union.ib_gid*, i32)*, i32 (%struct.ib_qp*, %union.ib_gid*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.ib_qp*, %union.ib_gid*, i32)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %21 = bitcast %union.ib_gid* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.in6_addr*
  %24 = call i32 @rdma_is_multicast_addr(%struct.in6_addr* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_QPT_UD, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @is_valid_mcast_lid(%struct.ib_qp* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %26, %19
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %59

40:                                               ; preds = %32
  %41 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %42 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i32 (%struct.ib_qp*, %union.ib_gid*, i32)**
  %46 = load i32 (%struct.ib_qp*, %union.ib_gid*, i32)*, i32 (%struct.ib_qp*, %union.ib_gid*, i32)** %45, align 8
  %47 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %48 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 %46(%struct.ib_qp* %47, %union.ib_gid* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %40
  %54 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %55 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %54, i32 0, i32 1
  %56 = call i32 @atomic_dec(i32* %55)
  br label %57

57:                                               ; preds = %53, %40
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %37, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @rdma_is_multicast_addr(%struct.in6_addr*) #1

declare dso_local i32 @is_valid_mcast_lid(%struct.ib_qp*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
