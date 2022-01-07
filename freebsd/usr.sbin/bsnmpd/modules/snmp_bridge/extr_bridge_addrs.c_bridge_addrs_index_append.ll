; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_index_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_index_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }
%struct.tp_entry = type { i64* }

@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i64, %struct.tp_entry*)* @bridge_addrs_index_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_addrs_index_append(%struct.asn_oid* %0, i64 %1, %struct.tp_entry* %2) #0 {
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tp_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.tp_entry* %2, %struct.tp_entry** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %10 = add i64 %8, %9
  %11 = add i64 %10, 1
  %12 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %13 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %15 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %16 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 %14, i64* %19, align 8
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %42, %3
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.tp_entry*, %struct.tp_entry** %6, align 8
  %27 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %35 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = getelementptr inbounds i64, i64* %36, i64 %40
  store i64 %33, i64* %41, align 8
  br label %42

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %20

45:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
