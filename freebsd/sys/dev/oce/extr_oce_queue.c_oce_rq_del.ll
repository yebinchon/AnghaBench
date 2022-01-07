; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_rq_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_rq_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_rq = type { i64, i32*, i32, i32, i32 }
%struct.oce_mbx = type { i32 }
%struct.mbx_delete_nic_rq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mbx_delete_nic_rq_v1 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@QCREATED = common dso_local global i64 0, align 8
@QTYPE_RQ = common dso_local global i32 0, align 4
@NIC_RQ_FLAGS_RSS = common dso_local global i32 0, align 4
@NIC_RQ_FLAGS_LRO = common dso_local global i32 0, align 4
@QDELETED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oce_rq*)* @oce_rq_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_rq_del(%struct.oce_rq* %0) #0 {
  %2 = alloca %struct.oce_rq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.oce_mbx, align 4
  %5 = alloca %struct.mbx_delete_nic_rq*, align 8
  %6 = alloca %struct.mbx_delete_nic_rq_v1*, align 8
  store %struct.oce_rq* %0, %struct.oce_rq** %2, align 8
  %7 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %8 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %11 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QCREATED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %1
  %16 = call i32 @bzero(%struct.oce_mbx* %4, i32 4)
  %17 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %18 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %4, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.mbx_delete_nic_rq*
  store %struct.mbx_delete_nic_rq* %23, %struct.mbx_delete_nic_rq** %5, align 8
  %24 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %25 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mbx_delete_nic_rq*, %struct.mbx_delete_nic_rq** %5, align 8
  %28 = getelementptr inbounds %struct.mbx_delete_nic_rq, %struct.mbx_delete_nic_rq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @QTYPE_RQ, align 4
  %33 = call i32 @oce_destroy_q(i32 %31, %struct.oce_mbx* %4, i32 4, i32 %32, i32 0)
  br label %54

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %4, i32 0, i32 0
  %36 = bitcast i32* %35 to %struct.mbx_delete_nic_rq_v1*
  store %struct.mbx_delete_nic_rq_v1* %36, %struct.mbx_delete_nic_rq_v1** %6, align 8
  %37 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %38 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mbx_delete_nic_rq_v1*, %struct.mbx_delete_nic_rq_v1** %6, align 8
  %41 = getelementptr inbounds %struct.mbx_delete_nic_rq_v1, %struct.mbx_delete_nic_rq_v1* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @NIC_RQ_FLAGS_RSS, align 4
  %45 = load i32, i32* @NIC_RQ_FLAGS_LRO, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.mbx_delete_nic_rq_v1*, %struct.mbx_delete_nic_rq_v1** %6, align 8
  %48 = getelementptr inbounds %struct.mbx_delete_nic_rq_v1, %struct.mbx_delete_nic_rq_v1* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @QTYPE_RQ, align 4
  %53 = call i32 @oce_destroy_q(i32 %51, %struct.oce_mbx* %4, i32 8, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %34, %21
  %55 = load i64, i64* @QDELETED, align 8
  %56 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %57 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %1
  %59 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %60 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %66 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @oce_cq_del(i32 %64, i32* %67)
  %69 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %70 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %63, %58
  ret void
}

declare dso_local i32 @bzero(%struct.oce_mbx*, i32) #1

declare dso_local i32 @oce_destroy_q(i32, %struct.oce_mbx*, i32, i32, i32) #1

declare dso_local i32 @oce_cq_del(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
