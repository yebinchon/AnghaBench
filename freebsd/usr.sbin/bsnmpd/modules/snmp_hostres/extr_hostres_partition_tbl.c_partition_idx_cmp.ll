; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_partition_tbl.c_partition_idx_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_partition_tbl.c_partition_idx_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32, i64* }
%struct.partition_entry = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i32, %struct.partition_entry*)* @partition_idx_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_idx_cmp(%struct.asn_oid* %0, i32 %1, %struct.partition_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.partition_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.partition_entry* %2, %struct.partition_entry** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %61, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %15 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %16, %17
  %19 = icmp slt i32 %13, %18
  br label %20

20:                                               ; preds = %12, %9
  %21 = phi i1 [ false, %9 ], [ %19, %12 ]
  br i1 %21, label %22, label %64

22:                                               ; preds = %20
  %23 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %24 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.partition_entry*, %struct.partition_entry** %7, align 8
  %33 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %31, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %81

41:                                               ; preds = %22
  %42 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %43 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %44, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.partition_entry*, %struct.partition_entry** %7, align 8
  %52 = getelementptr inbounds %struct.partition_entry, %struct.partition_entry* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %50, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %81

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %9

64:                                               ; preds = %20
  %65 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %66 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %81

72:                                               ; preds = %64
  %73 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %74 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %75, %76
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %4, align 4
  br label %81

80:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %79, %71, %59, %40
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
