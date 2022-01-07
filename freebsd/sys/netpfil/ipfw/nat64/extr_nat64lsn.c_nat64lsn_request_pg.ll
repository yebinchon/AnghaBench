; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_request_pg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_request_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nat64lsn_host = type { i32 }
%struct.ipfw_flow_id = type { i32 }
%struct.mbuf = type { i32 }
%struct.nat64lsn_job_item = type { %struct.nat64lsn_host*, i32, i32, i32, i32, %struct.ipfw_flow_id, %struct.mbuf* }

@JTYPE_NEWPORTGROUP = common dso_local global i32 0, align 4
@jportreq = common dso_local global i32 0, align 4
@IP_FW_DENY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nat64lsn_cfg*, %struct.nat64lsn_host*, %struct.ipfw_flow_id*, %struct.mbuf**, i32, i32, i32, i32)* @nat64lsn_request_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_request_pg(%struct.nat64lsn_cfg* %0, %struct.nat64lsn_host* %1, %struct.ipfw_flow_id* %2, %struct.mbuf** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.nat64lsn_cfg*, align 8
  %10 = alloca %struct.nat64lsn_host*, align 8
  %11 = alloca %struct.ipfw_flow_id*, align 8
  %12 = alloca %struct.mbuf**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nat64lsn_job_item*, align 8
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %9, align 8
  store %struct.nat64lsn_host* %1, %struct.nat64lsn_host** %10, align 8
  store %struct.ipfw_flow_id* %2, %struct.ipfw_flow_id** %11, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %9, align 8
  %19 = load i32, i32* @JTYPE_NEWPORTGROUP, align 4
  %20 = call %struct.nat64lsn_job_item* @nat64lsn_create_job(%struct.nat64lsn_cfg* %18, i32 %19)
  store %struct.nat64lsn_job_item* %20, %struct.nat64lsn_job_item** %17, align 8
  %21 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %17, align 8
  %22 = icmp ne %struct.nat64lsn_job_item* %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %8
  %24 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  %26 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %17, align 8
  %27 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %26, i32 0, i32 6
  store %struct.mbuf* %25, %struct.mbuf** %27, align 8
  %28 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %17, align 8
  %29 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %28, i32 0, i32 5
  %30 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %11, align 8
  %31 = bitcast %struct.ipfw_flow_id* %29 to i8*
  %32 = bitcast %struct.ipfw_flow_id* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %17, align 8
  %35 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %17, align 8
  %38 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %17, align 8
  %41 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %17, align 8
  %44 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.nat64lsn_host*, %struct.nat64lsn_host** %10, align 8
  %46 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %17, align 8
  %47 = getelementptr inbounds %struct.nat64lsn_job_item, %struct.nat64lsn_job_item* %46, i32 0, i32 0
  store %struct.nat64lsn_host* %45, %struct.nat64lsn_host** %47, align 8
  %48 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %9, align 8
  %49 = load %struct.nat64lsn_job_item*, %struct.nat64lsn_job_item** %17, align 8
  %50 = call i32 @nat64lsn_enqueue_job(%struct.nat64lsn_cfg* %48, %struct.nat64lsn_job_item* %49)
  %51 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %9, align 8
  %52 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* @jportreq, align 4
  %55 = call i32 @NAT64STAT_INC(i32* %53, i32 %54)
  %56 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %56, align 8
  br label %57

57:                                               ; preds = %23, %8
  %58 = load i32, i32* @IP_FW_DENY, align 4
  ret i32 %58
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
