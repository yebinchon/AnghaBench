; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_request_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_request_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ipfw_flow_id = type { i32 }
%struct.mbuf = type { i32 }
%struct.nat64lsn_job_item = type { i32, i32, i32, i32, %struct.ipfw_flow_id, %struct.mbuf* }

@JTYPE_NEWHOST = common dso_local global i32 0, align 4
@jhostsreq = common dso_local global i32 0, align 4
@IP_FW_DENY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nat64lsn_cfg*, %struct.ipfw_flow_id*, %struct.mbuf**, i32, i32, i32, i32)* @nat64lsn_request_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_request_host(%struct.nat64lsn_cfg* %0, %struct.ipfw_flow_id* %1, %struct.mbuf** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nat64lsn_cfg*, align 8
  %9 = alloca %struct.ipfw_flow_id*, align 8
  %10 = alloca %struct.mbuf**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nat64lsn_job_item*, align 8
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %8, align 8
  store %struct.ipfw_flow_id* %1, %struct.ipfw_flow_id** %9, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %8, align 8
  %17 = load i32, i32* @JTYPE_NEWHOST, align 4
  %18 = call %struct.nat64lsn_job_item* @nat64lsn_create_job(%struct.nat64lsn_cfg* %16, i32 %17)
  store %struct.nat64lsn_job_item* %18, %struct.nat64lsn_job_item** %15, align 8
  %19 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %15, align 8
  %20 = icmp ne %struct.nat64lsn_job_item* %19, null
  br i1 %20, label %21, label %52

21:                                               ; preds = %7
  %22 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  %24 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %15, align 8
  %25 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %24, i32 0, i32 5
  store %struct.mbuf* %23, %struct.mbuf** %25, align 8
  %26 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %15, align 8
  %27 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %26, i32 0, i32 4
  %28 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %9, align 8
  %29 = bitcast %struct.ipfw_flow_id* %27 to i8*
  %30 = bitcast %struct.ipfw_flow_id* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %15, align 8
  %33 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %15, align 8
  %36 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %15, align 8
  %39 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %15, align 8
  %42 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %8, align 8
  %44 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %15, align 8
  %45 = call i32 @nat64lsn_enqueue_job(%struct.nat64lsn_cfg* %43, %struct.nat64lsn_job_item* %44)
  %46 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %8, align 8
  %47 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @jhostsreq, align 4
  %50 = call i32 @NAT64STAT_INC(i32* %48, i32 %49)
  %51 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  store %struct.mbuf* null, %struct.mbuf** %51, align 8
  br label %52

52:                                               ; preds = %21, %7
  %53 = load i32, i32* @IP_FW_DENY, align 4
  ret i32 %53
}

declare dso_local %struct.nat64lsn_job_item* @nat64lsn_create_job(%struct.nat64lsn_cfg*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nat64lsn_enqueue_job(%struct.nat64lsn_cfg*, %struct.nat64lsn_job_item*) #1

declare dso_local i32 @NAT64STAT_INC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
