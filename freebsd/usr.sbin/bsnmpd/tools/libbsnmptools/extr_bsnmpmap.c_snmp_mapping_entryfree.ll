; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_entryfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_entryfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_oid2str = type { i64, i32, %struct.snmp_oid2str* }

@SNMP_TC_OWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_mapping_entryfree(%struct.snmp_oid2str* %0) #0 {
  %2 = alloca %struct.snmp_oid2str*, align 8
  store %struct.snmp_oid2str* %0, %struct.snmp_oid2str** %2, align 8
  %3 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %4 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %3, i32 0, i32 2
  %5 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %4, align 8
  %6 = icmp ne %struct.snmp_oid2str* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %9 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %8, i32 0, i32 2
  %10 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %9, align 8
  %11 = call i32 @free(%struct.snmp_oid2str* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %14 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNMP_TC_OWN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %20 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @enum_pairs_free(i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %2, align 8
  %25 = call i32 @free(%struct.snmp_oid2str* %24)
  ret void
}

declare dso_local i32 @free(%struct.snmp_oid2str*) #1

declare dso_local i32 @enum_pairs_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
