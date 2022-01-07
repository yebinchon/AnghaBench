; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c___ib_drain_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c___ib_drain_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ib_qp_attr = type { i32 }
%struct.ib_drain_cqe = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_recv_wr = type { %struct.TYPE_3__* }

@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_POLL_DIRECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"IB_POLL_DIRECT poll_ctx not supported for drain\0A\00", align 1
@ib_drain_qp_done = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to drain recv queue: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_qp*)* @__ib_drain_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ib_drain_rq(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.ib_qp_attr, align 4
  %4 = alloca %struct.ib_drain_cqe, align 4
  %5 = alloca %struct.ib_recv_wr, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %8 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 0
  %9 = load i32, i32* @IB_QPS_ERR, align 4
  store i32 %9, i32* %8, align 4
  %10 = bitcast %struct.ib_recv_wr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %12 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_POLL_DIRECT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_POLL_DIRECT, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %57

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.ib_drain_cqe, %struct.ib_drain_cqe* %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %5, i32 0, i32 0
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %30, align 8
  %31 = load i32, i32* @ib_drain_qp_done, align 4
  %32 = getelementptr inbounds %struct.ib_drain_cqe, %struct.ib_drain_cqe* %4, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ib_drain_cqe, %struct.ib_drain_cqe* %4, i32 0, i32 0
  %35 = call i32 @init_completion(i32* %34)
  %36 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %37 = load i32, i32* @IB_QP_STATE, align 4
  %38 = call i32 @ib_modify_qp(%struct.ib_qp* %36, %struct.ib_qp_attr* %3, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %57

45:                                               ; preds = %28
  %46 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %47 = call i32 @ib_post_recv(%struct.ib_qp* %46, %struct.ib_recv_wr* %5, %struct.ib_recv_wr** %6)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %57

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.ib_drain_cqe, %struct.ib_drain_cqe* %4, i32 0, i32 0
  %56 = call i32 @wait_for_completion(i32* %55)
  br label %57

57:                                               ; preds = %54, %50, %41, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, ...) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #2

declare dso_local i32 @ib_post_recv(%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #2

declare dso_local i32 @wait_for_completion(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
