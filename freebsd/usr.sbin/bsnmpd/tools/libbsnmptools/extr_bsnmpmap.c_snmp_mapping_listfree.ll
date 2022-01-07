; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_listfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_listfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_mapping = type { i32 }
%struct.snmp_oid2str = type { i64, i32, %struct.snmp_oid2str* }

@link = common dso_local global i32 0, align 4
@SNMP_TC_OWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_mapping*)* @snmp_mapping_listfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_mapping_listfree(%struct.snmp_mapping* %0) #0 {
  %2 = alloca %struct.snmp_mapping*, align 8
  %3 = alloca %struct.snmp_oid2str*, align 8
  store %struct.snmp_mapping* %0, %struct.snmp_mapping** %2, align 8
  br label %4

4:                                                ; preds = %32, %1
  %5 = load %struct.snmp_mapping*, %struct.snmp_mapping** %2, align 8
  %6 = call %struct.snmp_oid2str* @SLIST_FIRST(%struct.snmp_mapping* %5)
  store %struct.snmp_oid2str* %6, %struct.snmp_oid2str** %3, align 8
  %7 = icmp ne %struct.snmp_oid2str* %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load %struct.snmp_mapping*, %struct.snmp_mapping** %2, align 8
  %10 = load i32, i32* @link, align 4
  %11 = call i32 @SLIST_REMOVE_HEAD(%struct.snmp_mapping* %9, i32 %10)
  %12 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %3, align 8
  %13 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %12, i32 0, i32 2
  %14 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %13, align 8
  %15 = icmp ne %struct.snmp_oid2str* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %3, align 8
  %18 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %17, i32 0, i32 2
  %19 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %18, align 8
  %20 = call i32 @free(%struct.snmp_oid2str* %19)
  br label %21

21:                                               ; preds = %16, %8
  %22 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %3, align 8
  %23 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNMP_TC_OWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %3, align 8
  %29 = getelementptr inbounds %struct.snmp_oid2str, %struct.snmp_oid2str* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @enum_pairs_free(i32 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.snmp_oid2str*, %struct.snmp_oid2str** %3, align 8
  %34 = call i32 @free(%struct.snmp_oid2str* %33)
  br label %4

35:                                               ; preds = %4
  %36 = load %struct.snmp_mapping*, %struct.snmp_mapping** %2, align 8
  %37 = call i32 @SLIST_INIT(%struct.snmp_mapping* %36)
  ret void
}

declare dso_local %struct.snmp_oid2str* @SLIST_FIRST(%struct.snmp_mapping*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(%struct.snmp_mapping*, i32) #1

declare dso_local i32 @free(%struct.snmp_oid2str*) #1

declare dso_local i32 @enum_pairs_free(i32) #1

declare dso_local i32 @SLIST_INIT(%struct.snmp_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
