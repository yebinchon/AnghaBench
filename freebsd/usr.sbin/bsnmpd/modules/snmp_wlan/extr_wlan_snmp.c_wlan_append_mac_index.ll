; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_append_mac_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_append_mac_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i64, i32* }

@IEEE80211_ADDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i64, i8*, i64*)* @wlan_append_mac_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_append_mac_index(%struct.asn_oid* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = add i64 %10, %13
  %15 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %16 = add i64 %14, %15
  %17 = add i64 %16, 2
  %18 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %19 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %23 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  store i64 1, i64* %9, align 8
  br label %27

27:                                               ; preds = %47, %4
  %28 = load i64, i64* %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = icmp ule i64 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %41 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %43, %44
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %39, i32* %46, align 4
  br label %47

47:                                               ; preds = %33
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %27

50:                                               ; preds = %27
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %60 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %58, i32* %63, align 4
  store i64 1, i64* %9, align 8
  br label %64

64:                                               ; preds = %82, %50
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i64*, i64** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %76 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %78, %79
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %74, i32* %81, align 4
  br label %82

82:                                               ; preds = %68
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %64

85:                                               ; preds = %64
  ret void
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
