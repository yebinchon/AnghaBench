; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_find_node_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_find_node_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }
%struct.nodeinfo = type { i64 }
%struct.ng_mesg = type { i64 }
%struct.namelist = type { i64, %struct.nodeinfo* }

@snmp_node = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTNODES = common dso_local global i32 0, align 4
@ncmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i64, %struct.nodeinfo*)* @find_node_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_node_next(%struct.asn_oid* %0, i64 %1, %struct.nodeinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nodeinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca %struct.namelist*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nodeinfo* %2, %struct.nodeinfo** %7, align 8
  %13 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %14 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* @snmp_node, align 4
  %19 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %20 = load i32, i32* @NGM_LISTNODES, align 4
  %21 = call %struct.ng_mesg* @ng_dialog_id(i32 %18, i32 %19, i32 %20, i32* null, i32 0)
  store %struct.ng_mesg* %21, %struct.ng_mesg** %9, align 8
  %22 = icmp eq %struct.ng_mesg* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %99

24:                                               ; preds = %3
  %25 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %26 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.namelist*
  store %struct.namelist* %29, %struct.namelist** %10, align 8
  %30 = load %struct.namelist*, %struct.namelist** %10, align 8
  %31 = getelementptr inbounds %struct.namelist, %struct.namelist* %30, i32 0, i32 1
  %32 = load %struct.nodeinfo*, %struct.nodeinfo** %31, align 8
  %33 = load %struct.namelist*, %struct.namelist** %10, align 8
  %34 = getelementptr inbounds %struct.namelist, %struct.namelist* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @ncmp, align 4
  %37 = call i32 @qsort(%struct.nodeinfo* %32, i64 %35, i32 8, i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %24
  %41 = load %struct.namelist*, %struct.namelist** %10, align 8
  %42 = getelementptr inbounds %struct.namelist, %struct.namelist* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %47 = call i32 @free(%struct.ng_mesg* %46)
  store i32 -1, i32* %4, align 4
  br label %99

48:                                               ; preds = %40
  %49 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %50 = load %struct.namelist*, %struct.namelist** %10, align 8
  %51 = getelementptr inbounds %struct.namelist, %struct.namelist* %50, i32 0, i32 1
  %52 = load %struct.nodeinfo*, %struct.nodeinfo** %51, align 8
  %53 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %52, i64 0
  %54 = bitcast %struct.nodeinfo* %49 to i8*
  %55 = bitcast %struct.nodeinfo* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 8, i1 false)
  %56 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %57 = call i32 @free(%struct.ng_mesg* %56)
  store i32 0, i32* %4, align 4
  br label %99

58:                                               ; preds = %24
  %59 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %60 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %65

65:                                               ; preds = %93, %58
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.namelist*, %struct.namelist** %10, align 8
  %68 = getelementptr inbounds %struct.namelist, %struct.namelist* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %65
  %72 = load %struct.namelist*, %struct.namelist** %10, align 8
  %73 = getelementptr inbounds %struct.namelist, %struct.namelist* %72, i32 0, i32 1
  %74 = load %struct.nodeinfo*, %struct.nodeinfo** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %74, i64 %75
  %77 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %83 = load %struct.namelist*, %struct.namelist** %10, align 8
  %84 = getelementptr inbounds %struct.namelist, %struct.namelist* %83, i32 0, i32 1
  %85 = load %struct.nodeinfo*, %struct.nodeinfo** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %85, i64 %86
  %88 = bitcast %struct.nodeinfo* %82 to i8*
  %89 = bitcast %struct.nodeinfo* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 8, i1 false)
  %90 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %91 = call i32 @free(%struct.ng_mesg* %90)
  store i32 0, i32* %4, align 4
  br label %99

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %12, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %12, align 8
  br label %65

96:                                               ; preds = %65
  %97 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %98 = call i32 @free(%struct.ng_mesg* %97)
  store i32 -1, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %81, %48, %45, %23
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.ng_mesg* @ng_dialog_id(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @qsort(%struct.nodeinfo*, i64, i32, i32) #1

declare dso_local i32 @free(%struct.ng_mesg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
