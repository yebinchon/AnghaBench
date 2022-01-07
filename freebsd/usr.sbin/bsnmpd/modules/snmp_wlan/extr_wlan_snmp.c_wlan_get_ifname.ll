; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_ifname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_ifname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i64* }

@IFNAMSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.asn_oid*, i64, i8*)* @wlan_get_ifname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wlan_get_ifname(%struct.asn_oid* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load i64, i64* @IFNAMSIZ, align 8
  %11 = call i32 @memset(i8* %9, i32 0, i64 %10)
  %12 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %13 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = sub i64 %14, %15
  %17 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %18 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  %24 = icmp ne i64 %16, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %3
  %26 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %27 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IFNAMSIZ, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25, %3
  store i8* null, i8** %4, align 8
  br label %67

35:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %39 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %37, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %36
  %46 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %47 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %49, %50
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i8
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 %55, i8* %58, align 1
  br label %59

59:                                               ; preds = %45
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %36

62:                                               ; preds = %36
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %7, align 8
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %62, %34
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
