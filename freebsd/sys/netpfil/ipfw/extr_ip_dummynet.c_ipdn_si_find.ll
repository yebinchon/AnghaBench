; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_ipdn_si_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_ipdn_si_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32 }
%struct.dn_schk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ipfw_flow_id = type { i32 }

@DN_HAVE_MASK = common dso_local global i32 0, align 4
@DNHT_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dn_sch_inst* @ipdn_si_find(%struct.dn_schk* %0, %struct.ipfw_flow_id* %1) #0 {
  %3 = alloca %struct.dn_sch_inst*, align 8
  %4 = alloca %struct.dn_schk*, align 8
  %5 = alloca %struct.ipfw_flow_id*, align 8
  %6 = alloca %struct.ipfw_flow_id, align 4
  store %struct.dn_schk* %0, %struct.dn_schk** %4, align 8
  store %struct.ipfw_flow_id* %1, %struct.ipfw_flow_id** %5, align 8
  %7 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %8 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DN_HAVE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %16 = bitcast %struct.ipfw_flow_id* %6 to i8*
  %17 = bitcast %struct.ipfw_flow_id* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %19 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @flow_id_mask(i32* %20, %struct.ipfw_flow_id* %6)
  %22 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %23 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = ptrtoint %struct.ipfw_flow_id* %6 to i64
  %26 = load i32, i32* @DNHT_INSERT, align 4
  %27 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %28 = call %struct.dn_sch_inst* @dn_ht_find(i64 %24, i64 %25, i32 %26, %struct.dn_schk* %27)
  store %struct.dn_sch_inst* %28, %struct.dn_sch_inst** %3, align 8
  br label %44

29:                                               ; preds = %2
  %30 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %31 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %36 = call i64 @si_new(i32 0, i32 0, %struct.dn_schk* %35)
  %37 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %38 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %41 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.dn_sch_inst*
  store %struct.dn_sch_inst* %43, %struct.dn_sch_inst** %3, align 8
  br label %44

44:                                               ; preds = %39, %14
  %45 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  ret %struct.dn_sch_inst* %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @flow_id_mask(i32*, %struct.ipfw_flow_id*) #2

declare dso_local %struct.dn_sch_inst* @dn_ht_find(i64, i64, i32, %struct.dn_schk*) #2

declare dso_local i64 @si_new(i32, i32, %struct.dn_schk*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
