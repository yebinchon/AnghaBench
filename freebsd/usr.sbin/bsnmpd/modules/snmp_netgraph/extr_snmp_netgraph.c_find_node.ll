; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_find_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32* }
%struct.nodeinfo = type { i32 }
%struct.ng_mesg = type { i64 }

@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_NODEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, %struct.nodeinfo*)* @find_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_node(%struct.asn_oid* %0, i64 %1, %struct.nodeinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nodeinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ng_mesg*, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nodeinfo* %2, %struct.nodeinfo** %7, align 8
  %10 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %11 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %18 = load i32, i32* @NGM_NODEINFO, align 4
  %19 = call %struct.ng_mesg* @ng_dialog_id(i32 %16, i32 %17, i32 %18, i32* null, i32 0)
  store %struct.ng_mesg* %19, %struct.ng_mesg** %9, align 8
  %20 = icmp eq %struct.ng_mesg* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.nodeinfo*
  %29 = bitcast %struct.nodeinfo* %23 to i8*
  %30 = bitcast %struct.nodeinfo* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %32 = call i32 @free(%struct.ng_mesg* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %22, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.ng_mesg* @ng_dialog_id(i32, i32, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
