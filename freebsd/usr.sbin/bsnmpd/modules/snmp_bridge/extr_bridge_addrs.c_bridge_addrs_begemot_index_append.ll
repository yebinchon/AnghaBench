; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_begemot_index_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_begemot_index_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32*, i64 }
%struct.tp_entry = type { i32*, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn_oid*, i32, %struct.tp_entry*)* @bridge_addrs_begemot_index_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_addrs_begemot_index_append(%struct.asn_oid* %0, i32 %1, %struct.tp_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tp_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tp_entry* %2, %struct.tp_entry** %7, align 8
  %11 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %12 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @bridge_if_find_name(i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = sext i32 %20 to i64
  %23 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %24 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %27 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %30 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %25, i32* %33, align 4
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %54, %17
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %47 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %50 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %45, i32* %53, align 4
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %34

57:                                               ; preds = %34
  %58 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %59 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %60 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %63 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %58, i32* %66, align 4
  store i32 1, i32* %8, align 4
  br label %67

67:                                               ; preds = %88, %57
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %73 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %81 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %84 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %79, i32* %87, align 4
  br label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %67

91:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %16
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i8* @bridge_if_find_name(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
